#
# Recipe:: default
# Cookbook:: pyma
# Author:: Greg Albrecht W2GMD <oss@undef.net>
# Copyright:: Copyright 2016 Orion Labs, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pyma
#


include_recipe 'pyma::_blacklist'

# Pre-requisite programs:
include_recipe 'pyma::rtl-sdr'
include_recipe 'pyma::multimon-ng'
include_recipe 'pyma::kalibrate-rtl'

# pmma itself:
include_recipe 'pyma::service'
include_recipe 'pyma::config'
include_recipe 'pyma::app'
