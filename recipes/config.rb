#
# Recipe:: config
# Cookbook:: pymultimonaprs
# Author:: Greg Albrecht W2GMD <gba@gregalbrecht.com>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pymultimonaprs
#


ruby_block 'json config' do
  block do
    f = File.new(node['pymultimonaprs']['config_path'], 'w')
    f.write(node['pymultimonaprs'].to_json)
    f.close
  end
  notifies :restart, 'supervisor_service[pymultimonaprs]'
end
