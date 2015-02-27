#!/usr/bin/env ruby
# encoding: utf-8
#
# Enables pymultimonaprs service.
#
# Recipe:: service
# Cookbook:: pymultimonaprs
# Author:: Greg Albrecht W2GMD <gba@gregalbrecht.com>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pymultimonaprs
#


include_recipe 'supervisor'


pmma_path = File.join(
  node['pymultimonaprs']['virtualenv_path'], 'bin', 'pymultimonaprs'
)

service_cmd = [pmma_path, '--syslog -v -c /etc/pymultimonaprs.json'].join(' ')


supervisor_service 'pymultimonaprs' do
  command service_cmd
  action :enable
end
