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


application node['pyma']['install_path'] do
  git 'https://github.com/ampledata/pyma.git'
  virtualenv
  python_execute 'setup.py develop'
  notifies :restart, 'supervisor_service[pyma]'
end
