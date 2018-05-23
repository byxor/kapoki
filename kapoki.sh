#!/bin/bash

function createSkeleton {
    if [ "$#" -eq 2 ]
    then
        local projectPath="$1"
        local templatePath="$2"
        mkdir -p $projectPath
        cp -r $templatePath/. $projectPath
        _runSetupScript $projectPath
    else
        echo "Please provide the following command-line arguments: <project_path> <path_to_template>"
    fi
}

function _runSetupScript {
    local projectPath="$1"
    cd $projectPath
    local setupScript=".kapoki/init.sh"
    if [ -f $setupScript ]
    then
        source $setupScript
    fi
}

function update {
    echo "Updating Kapoki..."
    rm -rf /tmp/kapoki
    cd /tmp/
    git clone http://www.github.com/byxor/kapoki
    cd kapoki
    make install
}

function listTemplates {
    local templatePath="~/.kapoki"
    echo "Available templates in $templatePath:"
    ls -1 ~/.kapoki
}

if [ "$1" = "update" ]
then
    update $@
elif [ "$1" = "list" ]
then
    listTemplates $@
else
    createSkeleton $@
fi
