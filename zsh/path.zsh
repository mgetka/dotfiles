typeset -U PATH_ARRAY

PATH_ARRAY=(
    "$ZSH/bin"
    "/opt/homebrew/bin"
    "/opt/homebrew/opt/coreutils/libexec/gnubin"
)

export PATH="${(j.:.)PATH_ARRAY}:$PATH"
unset PATH_ARRAY
