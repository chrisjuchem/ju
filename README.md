# ju (Juchem's Utility)

A tool for setting up a new Linux installation with some of my preferred
settings and aliases.

## Prerequisutes

- `git`, with ssh configured, e.g.

        ssh-keygen -t ed25519 -C "<emailaddress>"
        ssh-add ~/.ssh/id_ed25519
  and upload to https://github.com/settings/keys
- A bashrc that sources all files within `~/.bashrc.d/`, e.g.

        if [ -d ~/.bashrc.d ]; then
            for rc in ~/.bashrc.d/*; do
                if [ -f "$rc" ]; then
                    . "$rc"
                fi
            done
        fi

## Setup 

From your home directory, run:

```sh
git clone git@github.com:chrisjuchem/ju.git
~/ju/setup.sh
```

`setup.sh` is designed to be indempotent, so you can run it again at anytime, after
making changes or pulling down a newer version.

## Major Components

### `jurc`

Aliases and environment variables to be sourced by `bashrc`. `setup.sh` creates a
file in `~/bashrc.d/` that sources this file directly, so changes to this file 
are reflecetd in the next shell opened even without running `setup.sh` again.

### `bin`

Directory containing executables. Added to $PATH by `jurc`.

### `git`

Directory containing files for global git configuration. Instead of copying them
or moving them, `git` is pointed directly to the files in this directory.

### `.vimrc`

Vim configuration. A symlink to this file is created in the home directory. It will
overwrite any existing configuration (saving a copy in `.vimrc.old`).

