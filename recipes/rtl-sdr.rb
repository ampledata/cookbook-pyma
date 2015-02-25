#!/usr/bin/env ruby
#
#
# Recipe:: rtl-sdr
# Cookbook:: pymultimonaprs
# Author:: Greg Albrecht W2GMD <gba@gregalbrecht.com>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pymultimonaprs
#


include_recipe 'ark'
include_recipe 'build-essential'


['cmake', 'libusb-1.0-0-dev'].each do |pkg|
  package pkg
end


ark 'rtl-sdr' do
  url 'http://git.osmocom.org/rtl-sdr/snapshot/rtl-sdr-0.5.3.tar.gz'
  action :install
  notifies :run, 'execute[cmake rtl-sdr]'
end


execute 'cmake rtl-sdr' do
  command 'cmake -DINSTALL_UDEV_RULES=ON'
  action :nothing
  cwd '/usr/local/rtl-sdr'
  notifies :run, 'execute[make install rtl-sdr]'
end


execute 'make install rtl-sdr' do
  command 'make install'
  action :nothing
  cwd '/usr/local/rtl-sdr'
  notifies :run, 'execute[ldconfig]'
end


execute 'ldconfig' do
  action :nothing
end
