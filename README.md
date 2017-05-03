# My vimrc
This is my personal vim config. All plugins are added as submodules for easy tracking and upgrading.

## Purpose
The purpose of this repo is to centralize my various vim configs and allow me to easily pull them down to new boxes. Maybe you'll find this useful, but probably not.

## Installation
Recursively clone (git clone --recursive <URI>) this repo into a directory of your choice. Then you need to create symlinks to point at these files.

    ln -s <PATH TO REPO>/vimrc ~/.vimrc
    ln -s <PATH TO REPO>/vim ~/.vim

## Dependencies
Some of the plugins used here require a certain binaries be preset or require certain VIM features. I've hacked on this so long I've lost track. YMMV. Should be pretty straight forward on Linux.
