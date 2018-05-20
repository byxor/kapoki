#!/bin/bash

function create_skeleton {
    if [ "$#" -eq 2 ]
    then
        local projectPath=$1
        local templatePath=$2
        mkdir -p $projectPath
        cp -r $templatePath/. $projectPath
        cd $projectPath
        
        local setupScript=".kapoki/init.sh"
        if [ -f . $setupScript ]
        then
            source $setupScript
        fi
    else
        echo "Please provide the following command-line arguments: <project_path> <path_to_template>"
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

if [ "$1" = "update" ]
then
    update $@
else
    create_skeleton $@
fi
