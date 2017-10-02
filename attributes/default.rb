# See https://github.com/chef-cookbooks/docker#properties-4

# The properties here are analagous to the service properties for the
# docker_service properties in the Docker cookbook
# See the following:
# https://github.com/chef-cookbooks/docker/blob/master/libraries/docker_service.rb
# and
# https://github.com/chef-cookbooks/docker/blob/master/libraries/docker_service_base.rb
default['owi_docker']['service']['default']['install_method'] = 'package'
default['owi_docker']['service']['default']['version'] = '17.09.0'

# Users in this array will be added to the Docker group so they can use the Docker
# engine without requiring root access
default['owi_docker']['group']['users'] = ['vagrant']

# Specify the version of Docker Machine required. Otherwise, use the
# `default['owi_docker']['machine'][binary_location]` to specify your own binary
# location
default['owi_docker']['machine']['version'] = '0.12.2'

# Specify the version of Docker Compose required. Otherwise, use the
# `default['owi_docker']['compose'][binary_location]` to specify your own binary
# location
default['owi_docker']['compose']['version'] = '1.16.0'

# Add iptables rules here for Docker-specific rules.
# For example, Swarm rules for a manager would look like:

# default['owi_docker']['iptables']['rules'] = {
#   'swarm_manager' => [
#   '-A INPUT -p tcp --dport 2376 -j ACCEPT',
#   '-A INPUT -p tcp --dport 2377 -j ACCEPT',
#   '-A INPUT -p tcp --dport 7946 -j ACCEPT',
#   '-A INPUT -p udp --dport 7946 -j ACCEPT',
#   '-A INPUT -p udp --dport 4789 -j ACCEPT']
# }

# See https://github.com/chef-cookbooks/iptables/blob/v4.2.1/README.md for more info
# on configuration of iptables
default['owi_docker']['iptables']['rules'] = {}
