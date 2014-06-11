#My vimrc
This is my personal vim config and related files. Where possible, all plugins are added as submodules for easy tracking and upgrade.

##Purpose
The purpose of this repo is to centralize all of vim configuration and to create a widely accessible location for me to pull this config onto various boxes that I use.

A secondary purpose to to share the work I have done with others in the hope that is may be useful.

##Installation
Recursively clone (git clone --recursive <URI>) this repo into a directory of your choice. Then you need to create symlinks to point at these files.

    ln -s <PATH TO REPO>/vimrc ~/.vimrc
    ln -s <PATH TO REPO>/vim ~/.vim

##Dependencies
Some of the plugins used here require a certain binary be preset. All of these are available from Linux package repos.
* Flake8 - Required by the flake8 plugin (I installed the latest from pip)
* CTags - Required by taglist

##Copyright
All submodules and plugins are owned by their respective authors and contributors. All other configuration files and plugins written by me (Grant Brady) contained herein are placed in the public domain.
