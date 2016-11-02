#!/usr/bin/env ruby
# encoding: utf-8
#
# Recipe:: python_packages
# Cookbook:: pyma
# Author:: Greg Albrecht W2GMD <oss@undef.net>
# Copyright:: Copyright 2016 Orion Labs, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pyma
#


include_recipe 'python'


package 'python-pkg-resources'

python_virtualenv node['pyma']['virtualenv_path']

python_pip 'https://github.com/ampledata/pyma/tarball/rewrite' do
  virtualenv node['pyma']['virtualenv_path']
  action :upgrade
  notifies :restart, 'supervisor_service[pyma]'
end
