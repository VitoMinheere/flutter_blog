# Dotfiles

For over a year I have been using Arch Linux . I started with it after viewing some Luke Smith videos and copying his install script and dotfiles(Named LARBS).

After getting into Flutter development and deciding I want to start on some small game development as well, I had a need to also be able to run OSX for building projects for that ecosystem.

Thus started my need for dotfiles on osx. I could search online and copy someone else\'s dotfiles and start from there but it doesn\’t feel right this time. I mean I should be able to set things up now right?

## Why would you create a dotfiles repo?

If you ever have to install your system more than once it will save you a lot of time. This could be due to a crash or just switching harddrives or even whole systems.

The usual install of:
- going to a website
- clicking the download icon
- clicking the installer
- going through the installer

just wastes a lot of time. Imagine having to do that all multiple times a year perhaps.

Yes it takes a lot of time to set it all up from scratch, especially doing it in some structured way. But when you install a new system and you only have to run 2 commands(one to get the repo, one to run the script) you will be glad you went through all that trouble.

## Where to start?

Before you can start typing up your install script you will first have to think about what you will install. You probably have a set of applications you will use every day. Those would be the first ones to install so you atleast can get started in your new OS.

So the first thing to start off with will be your package manager. For Arch it is Pacman, for OSX i use [Homebrew](https://brew.sh/). Look at your current system and create(or output) a list of currently installed packages.

