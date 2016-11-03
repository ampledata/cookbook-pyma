#!/usr/bin/env ruby
# encoding: utf-8
#
# Enables pyma service.
#
# Recipe:: service
# Cookbook:: pyma
# Author:: Greg Albrecht W2GMD <oss@undef.net>
# Copyright:: Copyright 2016 Orion Labs, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pyma
#


include_recipe 'supervisor'


pyma_path = File.join(
  node['pyma']['install_path'], '.virtualenv', 'bin', 'pyma'
)

service_cmd = [pyma_path, '-c', node['pyma']['config_path']].join(' ')

supervisor_service 'pyma' do
  command service_cmd
  action :enable
end
