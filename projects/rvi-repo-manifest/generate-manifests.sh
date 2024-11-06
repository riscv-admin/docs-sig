#!/bin/bash

MAX_REPOS=1000

#################################################################
# SW PREREQ's
# Check if gh is installed
if ! command -v gh &> /dev/null
then
    echo "ERROR: gh CLI could not be found. Please install it first."
    exit 1
fi

# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "ERROR: jq could not be found. Please install it first."
    exit 1
fi

#################################################################
# Check if correct number of arguments are provided
if [ $# -lt 2 ]; then
    echo "Usage: $0 <output_file> <org1> [org2] [org3] ..."
    exit 1
fi

# Get the output file name from the first argument
output_file="$1"
shift  # Remove the first argument (output file) from the list
mkdir -p "$(dirname "$output_file")"

# Create or clear the output file
> "$output_file"

# List of organizations from command line arguments
org_list="$@"

# XML header
xml_header='<?xml version="1.0" encoding="UTF-8"?>
<!-- GENERATED FILE DO NOT EDIT -->
<!-- https://gerrit.googlesource.com/git-repo/+/master/docs/manifest-format.md -->
<manifest>
    <include name="_common.xml" />'

echo "$xml_header" > "$output_file"

# Loop through each organization
for org in ${org_list}; do
    echo "Fetching repositories for organization: $org"

    # Get list of repositories for the organization
    repos=$(gh repo list -L $MAX_REPOS --no-archived --source $org --json name --jq '.[].name')

    # Loop through each repository
    for repo in $repos; do
        # Get default branch and topics
        repo_info=$(gh repo view "$org/$repo" --json defaultBranchRef --jq '{db: .defaultBranchRef.name}')

        default_branch=$(echo $repo_info | jq -r '.db')

        # Add repository information to the XML file
        repo_entry="    <project name='$org/$repo' revision='$default_branch' groups='$org' />"
        echo "$repo_entry" >> $output_file
    done
done

xml_footer="
</manifest>"

# Close the root element
echo $xml_footer >> $output_file

echo "XML manifest generated: $output_file"
