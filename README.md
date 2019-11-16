# Copy backslash as forwardslash
Wile learning how to use GitHub I encountered **2 problems while navigating folders using Git Bash on my Windows machine**: 

1. Windows file explorer uses backslashes ("\\") in file paths, but Git bash requires forwardslashes ("/"). 
2. My windows user name has a space (" ") in it, but Git bash requires spaces to be escaped ("\ ") in file paths. 

To solve these problems I did what any self-respecting, modern-day human would do and searched for a solution on the internet.
I came across [this](https://superuser.com/questions/1367257/autohotkey-script-replace-backslashes-with-forward-slashes) 
stackexchange question which inspired the current repository. 

**The autohotkey script in this repository solves these 2 problems.** Simply download it (you must first have 
[autohotkey](https://www.autohotkey.com/download/) installed on your machine) and run it (either double-click or 
right-click->"Run Script"). 

While running, the script activates 2 keybindings: 

1. "ctrl + /" which copies any selected text but replaces the backslashes with forwardslashes. 
2. "ctrl + spacebar" which also copies any selected text replacing the backslashes with forwardslashes, but 
*in addition* replaces spaces with escaped spaces. 

I opted for two separate keybindings because I noticed that, for some tasks, you actually *don't* want escaped
spaces in the file paths when using Git Bash. For example, if you want to change Git's default editor, you need to 
provide a filepath to the excecutable of that editor, but this file path should *not* have escaped spaces (see, e.g., 
[here](https://www.git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup)). 

This is my first foray into contributing code to GitHub - I hope it's helpful!
