#!/usr/bin/env bash

# Fail script immediately on any errors in external commands and print a message
set -eo pipefail

# This script's name as the user sees it (used for error messages)
script_name=$(basename "$0")

# Function to handle errors and script termination
handle_error() {
  exit_code=$?
  echo "Error on line $1: command exited with status $exit_code."
  exit $exit_code
}

# trap command can be used to trap signals and execute commands when those signals are received
# Here we trap errors and execute handle_error function, passing line number
trap 'handle_error $LINENO' ERR

# We set IFS (Internal Field Separator) to new line and tab to prevent word splitting issues
IFS=$'\n\t'

# Script starts here
current_directory=$(basename "$(pwd)")

sed -i "s/throw \"put your package name here\!\"/\"${current_directory}\"/g" flake.nix
echo "use flake" > .envrc 
direnv allow

# Always end your script by explicitly exiting with success status code
exit 0
