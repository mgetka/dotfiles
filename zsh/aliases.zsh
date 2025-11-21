# by default, run influx cli with hr precision
alias influx='influx -precision rfc3339'

# create and go to tmp dir
alias tmp='cd $(mktemp -d)'

# absolutely clean chrome session
alias virgin-chrome='google-chrome --user-data-dir=$(mktemp -d) --disable-fre --no-default-browser-check --no-first-run'
