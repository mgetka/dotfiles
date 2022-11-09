# alias ls='exa'
# Not exactly sure about replacing ls with exa entirely. It's tempting, but one thing bothers me.
# The 'oneline' option is commonly used in scripts, and its output differs between exa and ls.
# It is, exa displays symbolic links destinations, which may break some scripts. Example:
#
#   $ ls -1
#   Applications
#   Library
#   System
#   Users
#   Volumes
#   bin
#   cores
#   dev
#   etc
#   home
#   opt
#   private
#   sbin
#   tmp
#   usr
#   var
#
#   $ exa -1
#   Applications
#   bin
#   cores
#   dev
#   etc -> private/etc
#   home -> /System/Volumes/Data/home
#   Library
#   opt
#   private
#   sbin
#   System
#   tmp -> private/tmp
#   Users
#   usr
#   var -> private/var
#   Volumes
#
# Because fo that, I'll stick with exa only for commonly used aliases.

# Use exa instead of ls for typical, daily oprations
alias ll='exa -lagF --git'
