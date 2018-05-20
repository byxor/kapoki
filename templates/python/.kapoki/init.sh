echo "Preparing your project..."
projectName=$(basename $(pwd))

echo "Renaming some files/folders..."
mv .kapoki/src $projectName
mv .kapoki/main.py ${projectName}.py
mv .kapoki/gitignore .gitignore

echo "Creating a repository..."
git init

echo "Creating a virtual environment..."
virtualenv venv -p python3.6

echo "Done. Thanks for using kapoki!"
