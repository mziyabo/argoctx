## argoctx 
Simple utility to manage and switch between [argocd](https://argoproj.github.io/argo-cd/) contexts.

### Prerequisites

- [fzf - command-line fuzzy finder](https://github.com/junegunn/fzf)
- [argocd-cli](https://argoproj.github.io/argo-cd/cli_installation/)

### Installation

``` bash
git clone https://github.com/mziyabo/argoctx
cd argoctx

# copy to directory in PATH
chmod +x argoctx
cp argoctx /usr/local/bin
```

<kbd>bash</kbd> and <kbd>zsh</kbd> context completions scripts under `./completions` directory :

### Usage

```
USAGE:
    argoctx               : switch contexts (w/ fzf)
    argoctx <NAME>        : switch to context <NAME>
    argoctx -l, --list    : list contexts
    argoctx -d, --delete  : delete context
    argoctx -c, --current : show the current context name
```

### Release Notes:
Initial Release, Contributions welcome.

### License:
Apache-2.0