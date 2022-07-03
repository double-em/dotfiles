#!/bin/sh

#{{ if eq .chezmoi.os "arch" -}}

#sudo pacman -S podman podman-docker podman-dnsname buildah fuse-overlayfs;

#sysctl kernel.unprivileged_userns_clone

#sudo touch /etc/subuid /etc/subgid

#USERNAME=$(whoami)
#sudo usermod --add-subuids 100000-165535 --add-subgids 100000-165535 $USERNAME

#:podman system migrate

#{{ end -}}
