#!/usr/bin/env ruby
#
# Builds & Installs multimon-ng from github source using qmake.
#
# TODO: Replace with pre-packaged deb, or other means.
#
#
#
# Recipe:: multimon-ng
# Cookbook:: pymultimonaprs
# Author:: Greg Albrecht W2GMD <gba@gregalbrecht.com>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pymultimonaprs
#


include_recipe 'ark'
include_recipe 'build-essential'


# Build pre-requisites:
['qt4-qmake', 'libpulse-dev', 'libx11-dev'].each do |pkg|
  package pkg
end


# Half-a** use of ark:
ark 'multimon-ng' do
  url 'https://github.com/EliasOenal/multimon-ng/tarball/master'
  extension 'tar.gz'
  action :install
  notifies :run, 'execute[qmake multimon-ng]'
end


# Use qmake to create Makefile, because QT:
execute 'qmake multimon-ng' do
  command 'qmake-qt4 multimon-ng.pro'
  action :nothing
  cwd '/usr/local/multimon-ng'
  notifies :run, 'execute[make install multimon-ng]'
end


# Make install:
execute 'make install multimon-ng' do
  command 'make install multimon-ng'
  action :nothing
  cwd '/usr/local/multimon-ng'
end
