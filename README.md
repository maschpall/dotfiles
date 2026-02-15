## Dotfiles

This repo is to mantain all dotfiles so they can be in sync with different machines

### Chezmoi
In this manner i only run this and already sync the chezmoi genereated files locally, and the pushed remote files with my repo
=======
I created a cli function to generate aliases for diverse functions of chezmoi, which is a service that helps managing dotfiles between machines letting them live in their proper directory, meanwhile it syncs it with your repo in order everything is at the same version. Run chz instead of chezmoi help to see the aliases that i did.
  
    IMPORTANT: When editing dotfiles of repo files, DO NOT do it inside the chezmoi directory (not in the chz cd), let the chz sync alias manage it (combination of chezmoi add, chezmoi diff, chezmoi apply, git add -A && git commit m "M" && git push)

Note: still need to write on how to set up a chezmoi dir + init (its in the microsoft copilot chat) and also how to pull the dotfiles in another machine (still need to implement variety of OS - Linux or Mac)

    In order not to generate conflicts, always pull before editing in the repo!
    - repo="$(chezmoi source-path)"
    - git -C "$repo" fetch origin
    - git -C "$repo" pull --rebase origin master

When editing files that are not dotfiles, like the README, carefull with the conflicts! So basically:
  - always edit README from the git repo, not the chezmoi.
  - once edited, git add, commit and pull normally
  - if needed to edit a dotfile and want to push via the alias chz sync WAIT!
    - first need to do git pull so the changes in README can be updated, then edit the dotfile and proceed as normal. 



## Clear workflow

  - README -> a,c,p -> chz cd -> pull
  - .bashrc -> chz sync -> updates the dot_bashrc in the chezmoi repo and pushes it to github
  - in dotfiles repo -> git pull -> gets the updates locally at the dotfiles repo

Q: then maybe i just need a chezmoi repo? since i will basically always modify dotfiles normally, and then just run chz sync (and if there are no files in the curated set paths like README i just run chz add README and then chz sync)

### TODO 

  - write a cleaner README file and also assess all the repo creation commands and workflow
