name              "pacct-log"
maintainer       "AT&T Services, Inc."
maintainer_email "al592b@att.com"
license          "All rights reserved"
description      "pacct forwarding to loghost"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.2"
recipe            "pacct-log::default", "Installs rsync"
recipe            "pacct-log::server", "Configures rsync, sets up logdirs"
recipe            "pacct-log::client", "Configures rsync, sets up forwarding"

%w{ debian ubuntu }.each do |os|
  supports os
end
