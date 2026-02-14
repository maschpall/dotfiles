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

#


