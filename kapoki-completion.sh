#/usr/bin/env bash

_completions() {
    if [ "$1" != "update" ]
    then
        COMPREPLY+=("update")
    fi
}

complete -F _completions kapoki
