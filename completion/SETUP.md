<kbd>argoctx</kbd> shell completion scripts for ArgoCD context names

## Bash

```sh
# copy the `argoctx.bash` file to HOME folder:
git clone https://github.com/mziyabo/argoctx
cp ./completions/argoctx.bash $HOME/.argoctx.bash

# source completions
echo -e "# argoctx completion\n[ -f ~/.argoctx.bash ] && source ~/.argoctx.bash" >> $HOME/.bashrc
```

Start a new shell, type `argoctx`, then hit <kbd>Tab</kbd> to see the existing
contexts.

## Zsh

`zsh` leverages the same `bash` completion scripts as above.

```sh
git clone https://github.com/mziyabo/argoctx
cp ./completions/argoctx.bash $HOME/.argoctx.bash

# source completions
echo -e "# argoctx completion\n[ -f ~/.argoctx.bash ] && source ~/.argoctx.bash" >> $HOME/.zshrc
```