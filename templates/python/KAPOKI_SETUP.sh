echo "Preparing your project..."
projectName=$(basename $(pwd))

echo "Renaming some files/folders..."
mv src $projectName
mv main.py ${projectName}.py
mv gitignore .gitignore

git init

echo "Done. Thanks for using kapoki!"
