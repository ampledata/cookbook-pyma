#!/usr/bin/env ruby
# encoding: utf-8
#
# Recipe:: packages
# Cookbook:: pyma
# Author:: Greg Albrecht W2GMD <oss@undef.net>
# Copyright:: Copyright 2016 Orion Labs, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pyma
#


['qt4-qmake', 'libpulse-dev', 'libx11-dev', 'rtl-sdr',
    'librtlsdr-dev'].each do |pkg|
  package pkg
end
