# source virtualen init script, wherever it resides
if [ -e ~/.local/bin/virtualenvwrapper.sh ]
then
   source ~/.local/bin/virtualenvwrapper.sh
elif [ -e /bin/virtualenvwrapper.sh ]
then
    source /bin/virtualenvwrapper.sh
elif [ -e /usr/local/bin/virtualenvwrapper.sh ]
then
    source /usr/local/bin/virtualenvwrapper.sh
fi

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1

# python 3 as default
export VIRTUALENV_PYTHON=`which python3`
