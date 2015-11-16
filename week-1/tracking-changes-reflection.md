How does tracking and adding changes make developers' lives easier?

Tracking and adding changes allows developers to easily see the different changes that users have made to files. It also alows the developers to see what and were new files have been added to the repository.

What is a commit?

A commit is like hitting save on a text document. It adds all the changes and modifications that a user has done to the file(s) and saves it to the branch.

What are the best practices for commit messages?

Best practices is to write in the present tense, capitalizing the first letter of the message, and to keep the message short (around 50 characters)

What does the HEAD^ argument mean?

It means the previous commit.

What are the 3 stages of a git change and how do you move a file from one stage to the other?

The first stage is in the directory the user is working in. These are the actual files that are being modified. Second stage is adding the files to ready to commit area using the git add command. These files are ready to be added to the repository. Finally the third stage is the commit stage. This is when you're ready to commit the changes to the repository using the git commit command. This is also where you add a commit message to describe the changes.

Write a handy cheatsheet of the commands you need to commit your changes?

Go into the master branch
git pull the origin branch
git checkout -b branch name
work on files
git add files
git commit -m "commit message"
git push origin branch name
Go to gitHub and merge the branch then delete
git checkout master
git pull origin master

What is a pull request and how do you create and merge one?

A pull request is basically a request to update the repository with the submitted changes. You create one by first pushing the changes from the local computer to GitHub. Then on GitHub you can click on the Compare and pull request button. There you can add a title and description on what the pull request is for. Finally you click the Create pull request button.

Why are pull requests preferred when working with teams?
This notifies teams that something has been modified in the repository. This allows another person on the team to review the changes before committing the changes.