Very first time you use a new computer
--------------------------------------

    git config --global user.name "Neha Ramachandra"
    git config --global user.email "neha.bykadi@gmail.com"

Setting up a new project(repository{repo for short})
----------------------------------------------------

    git init

When you want to check which step you are on
--------------------------------------------

    git status

Three step commit process
-------------------------

* Make saved, tested changes to my code, (usually) get it completely working 
* Add any changed files to the stage
    git add filename.rb
* Commit the staged files
    git commit -m "Descriptive commit message to myself and others"