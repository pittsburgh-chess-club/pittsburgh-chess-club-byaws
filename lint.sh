#!/usr/bin/env bash

echo 'Potential Misspellings:'
for f in bylaws.md ; do
	echo $f ; aspell --add-extra-dicts=./templates/dictionary.en list < $f | sort | uniq -c
done

echo ''

echo 'Non-ASCII characters:'
grep --color='auto' -P -n "[^\x00-\x7F]" bylaws.md

echo ''

echo 'Trailing whitespace:'
grep -Hn '[[:blank:]]$' bylaws.md
