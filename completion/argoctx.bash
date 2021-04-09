shopt -s extglob

_argocd_contexts() {
  local curr_arg prev opts;
  COMPREPLY=()
  curr_arg=${COMP_WORDS[COMP_CWORD]}
  prev="${COMP_WORDS[COMP_CWORD-1]}"
  opts="-c -d --delete -l --list"
  
  if [[ ${curr_arg} == -* ]]; then
    COMPREPLY=( $(compgen -W '${opts}' -- ${curr_arg}) )
  elif [[ ${prev} == @(-d|--delete) || ${prev} == "argoctx" ]]; then
    pattern="- name: "
    ARGOCD_CONFIG="${XDG_CACHE_HOME:-$HOME/.argocd}/config"
    COMPREPLY=( $(compgen -W "$(grep $ARGOCD_CONFIG -e "${pattern}"|sed s/"${pattern}"//g)" -- ${curr_arg}) );
  fi
}

complete -F _argocd_contexts argoctx
