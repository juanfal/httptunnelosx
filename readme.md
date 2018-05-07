### HTTPtunnelOSX

OSX shell command to automatize http tunneling, also activating/deactivating OSX system system Network setup

* It uses expect to enter passwords/automatize the
  remote shell, this is up to you

* It activates locally through networksetup the OSX preferences
  to activate/deactivate the proxy settings

* It keeps active the connection avoiding ssh timeouts using
  running top remotely

You'd better use the ssh known_hosts way to enter in your remote account in the remote site.  Sending passwords in an open way is quite dangerous.

You'd need:

 1. A remote account (configured with known_hosts)
 2. The address of your remotely accesible proxy machine
 3. No third point here


