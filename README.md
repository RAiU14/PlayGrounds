# PlayGrounds
This is to primarily showcase my expertise completly!
A public space to showcase learning curve I suppose..

Learning Path right now: 
- [ ] Relearn basic CLI commands - Linux/Bash.

    ![](https://geps.dev/progress/35)
- [x] Might as well learn to document things on the way using this MD File. 
Progression Bar Reference: https://github.com/gepser/markdown-progress 

    ![](https://geps.dev/progress/60)

- [ ] Master Git [CLI]. 
    
    Understaing git, commands, scope and limitations.
    ![](https://geps.dev/progress/70)

    My reference: https://www.geeksforgeeks.org/introduction-to-github-actions/; 
    My Git Cheatsheet Reference: https://www.geeksforgeeks.org/git-cheat-sheet/ 
    - [x] Added .gitignore from a template. 
    - [ ] Will create an automatic setup to commit changes to the git but not push with the help of: 
    - [x] PS1 script to create an automated Windows Task Scheduler 
        This is an automated process which occurs everyday at a specific time. 
        Improvement version should provide active trigger for only when changes in the repository are made. 
        
        Is this a healthy practice? 
        In short. No. I am just playing around with whatever I can find. 
    
    - [ ] PS1 script to automate git commands.
    Why? I suppose it is to see what I can do with some reading. 

    ![](https://geps.dev/progress/40)

    Reference: https://learn.microsoft.com/en-us/powershell/module/scheduledtasks/?view=windowsserver2025-ps 

- [ ] Learn Docker/Kubernetes. 


- [ ] Showcase my work!

    ![](https://geps.dev/progress/35)

    - [x] Converted my resume to viewable webpage! [!!Removed Personal details!!]
        - [ ] Working on an appealing view. 

        ![](https://geps.dev/progress/70)


        - [ ] Create a portfolio page to showcase my Credly badges with the resume!


- Projects.
Project Progress: 
    - [ ] Simple Version Control Counter with the help of Python: 
        Counts total commits made in the local repository and updates the same in the .md file in the current directory's specific variable point. 
    - [ ] Bitwarden APIs to create a simple auth server if possible. Checking the possibility. 
    - [ ] Project using Netmiko to perform health check related log collection automatically. 
    - [ ] Version Counter: Counts the total number of commits done and update it in the readme file. 

    ![](https://geps.dev/progress/70)
- [ ] Probably Make a Bot for the Discord Server. 


## Research    
### Git - Github Authentication Problem for Android Devices (Termux)
We faced a slight issue. Unable to push changes through Android devices. [Why make changes through android? Simple on the go changes can be done through android if required.]

The issue is that Github does not make use of basic authentication method since 2021. Instead, it makes use of OAuth method in PC. Which is handled by Git Credential Manager (GMC) working with windows creditial manager. 
The latest method used by Github is PAT (Personal Access Token). 

How does this work exactly?
Initial commit/clone/push to the remote server (Github) do take basic authentication as verification method. As github has GMC as a trusted OAuth application, only these trusted application is able to do it. 
As evidence from the Github Security Logs provided, OAuth tokens do have an expiry. This is refreshed automatically by GMC during my next activity which involves anything with the remote server. 
Replicating this method for Android is not strictly impossible, however this would still require the user to create an SSH Token/PAT nevertheless to make this happen. 

    If that were the case. Then, the user can make a PAT without expiration and replace the password during prompt to avoid any Termux errors. 
    Or
    Change the authentication method to SSH with few fixes such as replacing the URL: url.git@github.com:.insteadof=https://github.com/