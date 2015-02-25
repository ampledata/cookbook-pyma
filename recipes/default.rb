#
# Recipe:: default
# Cookbook:: pymultimonaprs
# Author:: Greg Albrecht W2GMD <gba@gregalbrecht.com>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pymultimonaprs
#


include_recipe 'pymultimonaprs::rtl-sdr'
include_recipe 'pymultimonaprs::multimon-ng'
include_recipe 'pymultimonaprs::kalibrate-rtl'
include_recipe 'pymultimonaprs::config'
include_recipe 'pymultimonaprs::python_packages'
include_recipe 'pymultimonaprs::service'
