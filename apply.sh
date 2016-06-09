#!/bin/bash -e
/usr/bin/puppet apply /etc/puppet/manifests/site.pp --modulepath /etc/puppet/modules:/etc/puppet/plugins
if [ $? -eq 0 ] ; then
  /usr/bin/logger -i "Puppet ran successfully" -t "puppet-apply"
  exit 0
else
  /usr/bin/logger -i "Puppet encountered an error; please run puppet manually" -t "puppet-apply"
  exit 1
fi







