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

* for ArchLinuxAdministration.sh

You need to add aur repo and install yay

edit pacman configuration file

```bash

$ sudo nano /etc/pacman.conf 

```

add the following repository at the bottom

```bash

[archlinuxfr]
SigLevel = Never
Server = http=//repo.archlinux.fr/$arch

```

Now clone yay source code from git and run the build, it may take a while ;)


```bash
$ git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

```
finally press y key to install yay
