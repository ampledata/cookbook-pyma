#!/usr/bin/env ruby
#
# Builds & Installs kalibrate-rtl from github source.
#
# TODO: Replace with pre-packaged deb, or other means.
#
#
#
# Recipe:: kalibrate-rtl
# Cookbook:: pymultimonaprs
# Author:: Greg Albrecht W2GMD <gba@gregalbrecht.com>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pymultimonaprs
#


include_recipe 'ark'
include_recipe 'build-essential'


package 'libfftw3-dev'


ark 'kalibrate-rtl' do
  url 'https://github.com/asdil12/kalibrate-rtl/tarball/arm_memory'
  extension 'tar.gz'
  action :install
  notifies :run, 'execute[bootstrap kalibrate-rtl]'
end


execute 'bootstrap kalibrate-rtl' do
  command './bootstrap'
  action :nothing
  cwd '/usr/local/kalibrate-rtl'
  notifies :run, 'execute[configure kalibrate-rtl]'
end


execute 'configure kalibrate-rtl' do
  command './configure'
  action :nothing
  cwd '/usr/local/kalibrate-rtl'
  notifies :run, 'execute[make kalibrate-rtl]'
end


execute 'make kalibrate-rtl' do
  command 'make'
  action :nothing
  cwd '/usr/local/kalibrate-rtl'
  notifies :run, 'execute[make install kalibrate-rtl]'
end


execute 'make install kalibrate-rtl' do
  command 'make install'
  action :nothing
  cwd '/usr/local/kalibrate-rtl'
end
