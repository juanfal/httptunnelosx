#!/usr/bin/env expect
# httptunnelosx.sh
# ..2018-05-07
# It uses expect to enter passwords/automatize the
#   remote shell, this is up to you
# It activates locally through networksetup the OSX preferences
#   to activate/deactivate the proxy settings
# It keeps active the connection avoiding ssh timeouts using
#   running top remotely

package require Expect

puts "OSX Mac password:"
system "sudo proxyset.sh on"

spawn ssh -L3128:your.proxy.site.es:3128 yourLoginName@yourRemoteAccount.yoursite.es

# expect -re ".*: "
# send "yourPasswordCouldBeHereButNotRecommended at all\n"
#   You'd better use shell known_hosts of ssh
send "top\n"
interact





puts "If timeout... OSX Mac password:"
system "sudo proxyset.sh off"


