typeset -U PATH_ARRAY
PATH_ARRAY=(${(s.:.)PATH})

PATH_ARRAY+=("$ZSH/bin")
PATH_ARRAY+=("/opt/homebrew/bin")
PATH_ARRAY+=("/opt/homebrew/opt/coreutils/libexec/gnubin")

export PATH=${(j.:.)PATH_ARRAY}
unset PATH_ARRAY
