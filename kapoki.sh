if (( $# != 2 ))
then
    local projectPath=$1
    local templatePath=$2
    mkdir -p $projectPath
    cp -r $templatePath/. $projectPath
else
    echo "Please provide the following command-line arguments:"
    echo "<project_path> <template_path>"
fi
