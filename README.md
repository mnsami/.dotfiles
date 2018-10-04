.dotfiles
=========

![Screenshot of my shell prompt](https://cloud.minasami.com/apps/files_sharing/publicpreview/JArNKMeNkgM9XoY?x=1920&y=714&a=true&file=mnsami_shell_look.png&scalingup=0)

These are my dotfiles. Take anything you want, but at your own risk.
I created this mainly for using on macOS, and I didn't test it on any *nix system.

## Thanks to...

* [Mathias Bynens](https://mathiasbynens.be/) and his [dotfiles Repo](https://github.com/mathiasbynens/dotfiles)
* Lars Kappert and his awesome blog about [dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789)

## Colors

My color theme is drived from [One Dark for iterm](https://github.com/anunez/one-dark-iterm), and I added more customizations to my liking. You can find it [here](https://github.com/mnsami/dotfiles/blob/master/iterm/One%20Dark.itermcolors).

To use the same color theme as mine, go to:

1. iTerm2 -> Preferences -> Profiles -> Colors
2. From the Color Presets, import the `.itermcolors` file and select it.


## Installation

**NOTE:**

I consider this work still under development and there is a lot of room for improvment.

### Using Git and the bootstrap script

You can clone it anywhere on your machine, the `bootstrap.sh` script will pull in the latest updates from github and copy the files to your home folder.

##### To install in one line, run:

    git clone https://github.com/mathiasbynens/dotfiles.git && cd dotfiles && source bootstrap.sh

##### Update:

    cd /path/to/dotfiles
    source bootstrap.sh

### Adding extra customizations

If `~/.extra` exists, it will be sourced along with the other files (check [`.bash_profile`](https://github.com/mnsami/dotfiles/blob/autodeploy/.bash_profile)). You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` file looks like this:

    #!/usr/bin/env bash

    # brew
    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

    # work related stuff
    export NPM_TOKEN="xxxxxxxxxx"

    # git
    GIT_AUTHOR_NAME="Mina Nabil Sami"
    GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
    git config --global user.name "$GIT_AUTHOR_NAME"
    GIT_AUTHOR_EMAIL="mina.nsami@gmail.com"
    GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
    git config --global user.email "$GIT_AUTHOR_EMAIL"

### Install Homebrew formulae

This will do the following:

1. install `brew`
2. install some `brew` packages that I use for everyday operation.

```bash
./brew.sh
```

Some of the functionality of these dotfiles depends on formulae installed by `brew.sh`. If you don’t plan to run `brew.sh`, you should look carefully through the script and manually install any particularly important ones.

## Author

| [![twitter/MinaNabilSami](https://secure.gravatar.com/avatar/d990e5db49fc11a49e3a4a1e19c2607d)](http://twitter.com/MinaNabilSami "Follow @MinaNabilSami on Twitter") |
|---|
| [Mina Sami](https://www.linkedin.com/in/mnsami/) |