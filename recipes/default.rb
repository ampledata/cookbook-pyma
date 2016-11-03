#!/usr/bin/env ruby
# encoding: utf-8
#
# Recipe:: default
# Cookbook:: pyma
# Author:: Greg Albrecht W2GMD <oss@undef.net>
# Copyright:: Copyright 2016 Orion Labs, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pyma
#


#include_recipe 'pyma::_blacklist'

include_recipe 'pyma::packages'

include_recipe 'pyma::multimon-ng'
include_recipe 'pyma::kalibrate-rtl'

include_recipe 'pyma::service'
include_recipe 'pyma::config'
include_recipe 'pyma::app'
