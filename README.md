## Dotfiles

This repo is to mantain all dotfiles so they can be in sync with different machines

### Chezmoi
In this case, in order to keep a clean sync between local dotfile copies under the ~/ directory, we use a service named chezmoi, which helps to manage securely dotfiles between machines. During the process, I created a few aliases to streamline the process.
  
  chezmoi add -> chz add : adds your curated set (can be modified depending on what dirs or files i want to always update)
  
  chezmoi add ~/.config{...}: adds a specific file 
  
  chezmoi diff -> chz diff:

  chz sync: function that comprehends several steps -> chezmoi add, chezmoi diff, chezmoi apply, chezmoi cd && git add -A && git commit -m && git push

In this manner i only run this and already sync the chezmoi genereated files locally, and the pushed remote files with my repo
