#!/usr/bin/env bash

# These variables can be used to color output.
BOLD=`tput bold`
RED=`tput setaf 1`
RED_BOLD=$BOLD$RED
GREEN_BOLD=$BOLD`tput setaf 2`
RESET=`tput sgr0`

#: check_for command
#:
#: Checks for the existence of a given program. Aborts with status 1 if the
#: program is not installed, does nothing otherwise.
#:
#: :param command: The command to check for.
#:
#: .. note::
#:
#:    Pulled from `this StackOverflow post <http://stackoverflow.com/a/677212/1989056>`_.
function check_for {
	if ! command -v "$1" > /dev/null 2>&1; then
		echo >&2 "${RED_BOLD}FATAL${RESET}: This script requires $1 but it's not installed."
		exit 1
	fi
}

#: what_branch
#:
#: Prints the name of the git branch you are currently on.
#:
#: .. note::
#:
#:    Pulled from `this StackOverflow post <http://stackoverflow.com/a/1593487/1989056>`_.
function what_branch {
	branch_name="$(git symbolic-ref HEAD 2>/dev/null)" ||
	branch_name="(unnamed branch)"     # detached HEAD

	echo ${branch_name##refs/heads/}
}
