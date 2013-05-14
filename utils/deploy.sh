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
if [[ "$CURRENT_BRANCH" != "master-source" ]]; then
	git checkout master-source
fi

# Build the site
jekyll build --config _config.yml,_config.production.yml

# Move the site to a temporary directory
TEMP_DIR=`mktemp -d`
mv ./_site/* "$TEMP_DIR"/
rmdir ./_site

# Tranfer the site into the master branch.
git checkout master
rm -rf *
mv -f "$TEMP_DIR"/* ./

# Add the CNAME file
echo galahgroup.com > CNAME

# Disable the printing out of every command, we're done with the bulk of the
# script now.
set +x

echo
echo "${GREEN}DONE${RESET}. You should now examine the state of the current"
echo "branch and make an appropriate commit, then push up the changes to"
echo "github."
