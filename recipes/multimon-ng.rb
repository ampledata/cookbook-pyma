#!#!/usr/bin/env ruby
# encoding: utf-8
#
# Builds & Installs multimon-ng from github source using qmake.
#
# Recipe:: multimon-ng
# Cookbook:: pyma
# Author:: Greg Albrecht W2GMD <oss@undef.net>
# Copyright:: Copyright 2016 Orion Labs, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pyma
#


include_recipe 'ark'
include_recipe 'build-essential'


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
  cwd node['pyma']['multimon-ng']['install_path']
  notifies :run, 'execute[make multimon-ng]'
end

execute 'make multimon-ng' do
  command 'make'
  action :nothing
  cwd node['pyma']['multimon-ng']['install_path']
  notifies :run, 'execute[make install multimon-ng]'
end

execute 'make install multimon-ng' do
  command 'make install'
  action :nothing
  cwd node['pyma']['multimon-ng']['install_path']
end
