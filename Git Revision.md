Git 
    - used as version control.
    - we install it in our system.
    - it is command line tool

GitHub
    - online Git, where we can collaborate on a project
    - we publish/upload our repo from local machine(git repo) to github.
    - we can also clone Github repo(remote repo) to local machine

GitHub Desktop
    - software that we install in our system.
    - Bridge between the two.
    - It works as GUI for Git.


What do we mean by commit?
    - commit means we are saving new version of project in our Git Repo.
    - can we commit more than one file at a time?
        yes.
How can we commit file(s) of local repo?
    - From VS Code
        - go to source control tab
         - stage the files you want to commit (by + sign)
         - commit message
         - commit
    - Github Desktop
        - select files which you want to commit
        - write message
        - commit
    - Commands to run From terminal of VS Code (or any)
        - git add   { to stage all files}
        - git commit -am 'commit message'

How to push commits from local repo to remote repo?
    - Command to run from Terminal 
        - git push
    - VS Code
        - go to source control
        - sync changes 
    - GitHub Desktop
        - push origin

how can we get THE new repo from remote to local?
    - we use git clone
    - from remote repo > click on open in Github desktop  

If we already have repo in local, then How to fetch or get or pull all the changes from remote repo to local repo?
    - git pull
    - or sync changes.


