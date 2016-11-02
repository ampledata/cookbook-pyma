#
# Recipe:: config
# Cookbook:: pyma
# Author:: Greg Albrecht W2GMD <oss@undef.net>
# Copyright:: Copyright 2016 Orion Labs, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pyma
#


ruby_block 'pyma JSON config' do
  block do
    f = File.new(node['pyma']['config_path'], 'w')
    f.write(node['pyma'].to_json)
    f.close
  end
  notifies :restart, 'supervisor_service[pyma]'
end
