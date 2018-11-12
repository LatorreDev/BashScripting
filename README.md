# BashScripting

This is a repository where you can find bash scripts of everyday tasks.

## If i want download and run the script?

```bash
$ curl -L -O https://github.com/LatorreDev/BashScripting/script-name.sh

$ chmod +x script-name.sh

```
## Pre-requisites

**This script is designed for ArchLinux and derivated**

* for *Ap_hotspot.sh* 
install screen and create_ap  

```bash
$ sudo pacman -S screen create_ap  

```

* for autoupdateArch.sh

You need to install yaourt

edit pacman configuration file

*```bash
$ sudo nano /etc/pacman.conf

```*

add the following repository at the bottom

```bash

[archlinuxfr]
SigLevel = Never
Server = http=//repo.archlinux.fr/$arch

```

save and close file, now update the repository database and install yaourt

```bash
$ sudo pacman -Sy yaourt

```

