# containerShellZsh

A simple way to run commands inside docker containers from the comfort of your zsh

# Usage
By default you'll be dropped into a bash shell within the container. Your current directory will be volume mounted to /app within the container and the container will be removed when you exit
```bash
$ dockerShell MyCoolImage
```
If you want to execute a command within the container and have it exit simply add the command you want to run
```bash
$ dockerShell MyCoolImage echo YAY
```
