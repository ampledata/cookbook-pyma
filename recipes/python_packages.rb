#
# Recipe:: python_packages
# Cookbook:: pymultimonaprs
# Author:: Greg Albrecht W2GMD <gba@gregalbrecht.com>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pymultimonaprs
#


include_recipe 'python'

package 'python-pkg-resources'


python_virtualenv '/srv/pymultimonaprs'


python_pip 'https://github.com/ampledata/pymultimonaprs/tarball/rewrite' do
  virtualenv '/srv/pymultimonaprs'
  action :upgrade
  notifies :restart, 'supervisor_service[pymultimonaprs]'
end
