#!/usr/bin/env bash
set -e

# ".mailmap" for how email addresses and names are deduplicated

{
	cat <<- 'EOH'
	EOH
	echo
	git log --format='%aN <%aE>' | LC_ALL=C.UTF-8 sort -uf
} > AUTHORS
