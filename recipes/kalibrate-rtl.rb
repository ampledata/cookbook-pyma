#!/usr/bin/env ruby
# encoding: utf-8
#
# Builds & Installs kalibrate-rtl from github source.
#
# Recipe:: kalibrate-rtl
# Cookbook:: pyma
# Author:: Greg Albrecht W2GMD <oss@undef.net>
# Copyright:: Copyright 2016 Orion Labs, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pyma
#


include_recipe 'ark'
include_recipe 'build-essential'


ark 'kalibrate-rtl' do
  url 'https://github.com/asdil12/kalibrate-rtl/tarball/arm_memory'
  extension 'tar.gz'
  action :install
  notifies :run, 'execute[bootstrap kalibrate-rtl]'
end

execute 'bootstrap kalibrate-rtl' do
  command './bootstrap'
  action :nothing
  cwd node['pyma']['kalibrate-rtl']['install_path']
  notifies :run, 'execute[configure kalibrate-rtl]'
end

execute 'configure kalibrate-rtl' do
  command './configure'
  action :nothing
  cwd node['pyma']['kalibrate-rtl']['install_path']
  notifies :run, 'execute[make kalibrate-rtl]'
end

execute 'make kalibrate-rtl' do
  command 'make'
  action :nothing
  cwd node['pyma']['kalibrate-rtl']['install_path']
  notifies :run, 'execute[make install kalibrate-rtl]'
end


execute 'make install kalibrate-rtl' do
  command 'make install'
  action :nothing
  cwd kalibrate_path
end
