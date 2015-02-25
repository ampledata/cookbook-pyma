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
  action :install_with_make
end
