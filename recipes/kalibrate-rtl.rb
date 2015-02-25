#!/usr/bin/env ruby
#
# Builds & Installs kalibrate-rtl from github source.
#
# TODO: Replace with pre-packaged deb, or other means.
#
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
  command './configure kalibrate-rtl'
  action :nothing
  cwd '/usr/local/kalibrate-rtl'
  notifies :run, 'execute[make install kalibrate-rtl]'
end


execute 'make install kalibrate-rtl' do
  command 'make install kalibrate-rtl'
  action :nothing
  cwd '/usr/local/kalibrate-rtl'
end
