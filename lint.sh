#!/usr/bin/env bash

BYLAWS='bylaws.md'
OUR_DICTIONARY='./templates/dictionary.en'
EXIT_STATE=0

if [[ -n "$(aspell --add-extra-dicts=${OUR_DICTIONARY} list < ${BYLAWS})" ]]; then
    echo 'Potential Misspellings:'
    aspell --add-extra-dicts=${OUR_DICTIONARY} list < ${BYLAWS} | sort | uniq -c
    echo ''
    EXIT_STATE=1
fi

if [[ -n "$( grep --color='auto' -P -n "[^\x00-\x7F]" ${BYLAWS})" ]]; then
    echo 'Non-ASCII characters:'
    grep --color='auto' -P -n "[^\x00-\x7F]" ${BYLAWS}
    echo ''
    EXIT_STATE=1
fi

if [[ -n "$(grep -Hn '[[:blank:]]$' ${BYLAWS})" ]]; then
    echo 'Trailing whitespace:'
    grep -Hn '[[:blank:]]$' ${BYLAWS}
    EXIT_STATE=1
fi

exit $EXIT_STATE
