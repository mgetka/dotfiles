# source virtualen init script
source /opt/homebrew/bin/virtualenvwrapper.sh

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1

# python 3 as default
export VIRTUALENV_PYTHON=`which python3`
