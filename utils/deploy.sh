#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/lib.sh

check_for jekyll

# From here on every command will be printed out before it is executed
set -x

# From here on if any command fails the script will abort
set -e

cd $DIR/..

# Ensure we're on master.
CURRENT_BRANCH=`what_branch`
if [[ "$CURRENT_BRANCH" != "master" ]]; then
	git checkout master
fi

# Build the site
jekyll build

# Move the site to a temporary directory
TEMP_DIR=`mktemp -d`
mv ./_site/* "$TEMP_DIR"/
rmdir ./_site

# Tranfer the site into the gh-pages branch.
git checkout gh-pages
mv -f "$TEMP_DIR"/* ./

# Disable the printing out of every command, we're done with the bulk of the
# script now.
set +x

echo
echo "${GREEN}DONE${RESET}. You should now examine the state of the current"
echo "branch and make an appropriate commit, then push up the changes to"
echo "github."
