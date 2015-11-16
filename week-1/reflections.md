# 1.1 Think About Time
This week I learned a lot about the pomodoro technique as well as a few other time management techniques such as the Fogg method, how meditation can help your focus, and how to develop a growth mindset.

Time Boxing is setting a specific period of time to work towards a goal and stopping at the time limit. You then evaluate what work has been completed. The pomodoro technique is an example of time boxing.

Right now I manage my time setting a specific number of hours aside during the day to work on tasks. This strategy works for me, although sometimes I do put off work when other things come up.

I am interested in meditation and the pomodoro technique and will try them out in the coming weeks.

For Phase 0 I plan to use a calendar to plan out the week and what tasks I will work on per day. I will also integrate the pomodoro technique and some meditation at least for next week to see how it works.

## 1.2 The Command Line
What is a shell? What is "bash?"
A shell is a user interface that can be used to access services within an operating system. Shells use either a graphical user interface or a command line interface. An example of a GUI shell is the Windows shell. A command line example would be Bash. Bash is the default command line shell on OS X. It provides a way for the user to access command line services on their system.

What was the most challenging for you in going through this material?
The most challenging thing in going through the material was the Pipes and Redirection section. I had to reread it a couple of times and try out the commands more than the other ones to get a grasp on how they work and what they can do.

Were you able to successfully use all of the commands?
I had a minor hiccup when using the rmdir command. I was able to remove one directory but when I tried to remove the parent directory the terminal said the Directory was not empty. After some research I discovered that if you look at the folder in OS X, it creates a hidden file in that folder. I was able to remove the hidden file by using the ls -la command to view all files in the directory and then deleting it. I was then able to rmdir the parent directory.

In your opinion, what are the most important commands and arguments to know?
Pwd, ls, and cd I feel are the most important. These all deal with understanding where you are, where you can go and how to navigate in the system. ../ is also important to use in conjunction with the cd command in order to move up and down the directory tree.

Can you remember what each of the following does of the top of your head? Write what each does.
-pwd

Prints the working directory or folder. Helps the user figure out where they are in the directory tree.

-ls

Lists files and directories held within the current directory.

-mv

Renames or moves files. Use by giving the old name then the new name.

-cd

Change the directory that you are in. You can move up or down the folder tree by using additional arguments.

-../

Used with change directory command to quickly move up the tree and path multiple levels.

-touch

Creates a new empty file.

-mkdir

Creates a directory or folder with the given name and folder path. You can add options such as -p which will make parent directories as needed.

-less

Used to look at the contents of a file. Useful because you can "page" through files with a lot of lines.

-rmdir

Removes the directory. You can't remove the directory you're currently in or parent directories. Also, the directory you want to remove must completely be empty.

-rm

Used to remove files. Can also be used to remove directory with contents in it using the "-rf" option.

-help

Used to lookup information on commands and how they work. The Unix command "man" is used in a similar fashion.

Additionally grep can be used to look inside the files. For example, grep test *.txt will look for the word test in all .txt files in the directory.
### 1.4 Forking and Cloning
If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?
To create a new repo, click on the "+" on the top right of the screen and click New repository. Next give it a name, choose the MIT license and click Create repository
To fork a repository go to the repository you'd like to fork and click the Fork button near the top right of the screen
To clone a repo onto you're computer copy the HTTPS clone URL found on the lower right hand side of the repository page. Next, use terminal to navigate to where you would like to clone the repository. Finally type "git clone (copied url)" and hit enter. This will clone the repository onto your computer in the current directory 
The reason a user would want to fork a repository is to create a copy of an existing repository that resides on a different account. This is so the user can safely use or modify the code with out affecting the original repository.
What struggles did you have setting up git and GitHub? What did you learn in the process?
Not so much a struggle, but I was curious about the reason for the MIT license. I went to the license page linked on gitHub which gave a brief description of the various licenses available. The assignment video and summary were very helpful. I followed the instructions and learned how to create, clone, and fork repositories.