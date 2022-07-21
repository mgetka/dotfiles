# by default, run influx cli with hr precision
alias influx='influx -precision rfc3339'

# create and go to tmp dir
alias tmp='cd $(mktemp -d)'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g'

# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# Brew... but x86_64
alias brew86='arch -x86_64 /usr/local/bin/brew'
