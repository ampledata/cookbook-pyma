#!/usr/bin/env ruby
# encoding: utf-8
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
    require 'json'
    f = File.new(node['pyma']['config_path'], 'w')
    f.write(JSON.pretty_generate(node['pyma']))
    f.close
  end
  notifies :restart, 'supervisor_service[pyma]'
end
