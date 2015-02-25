#
# Recipe:: service
# Cookbook:: pymultimonaprs
# Author:: Greg Albrecht W2GMD <gba@gregalbrecht.com>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pymultimonaprs
#


include_recipe 'supervisor'

supervisor_service 'pymultimonaprs' do
  command '/srv/pymultimonaprs/bin/pymultimonaprs --syslog -c /etc/pymultimonaprs.json'
end
