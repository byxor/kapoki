#/usr/bin/env bash

_completions() {
    COMPREPLY=("update")
}

complete -F _completions kapoki
