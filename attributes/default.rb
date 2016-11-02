# pyma default Attributes.
#
# Attributes:: default
# Cookbook:: pyma
# Author:: Greg Albrecht W2GMD <oss@undef.net>
# Copyright:: Copyright 2016 Orion Labs, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pyma
#


default['pyma']['virtualenv_path'] = '/srv/pyma'
default['pyma']['config_path'] = '/etc/pyma.json'
default['pyma']['callsign'] = 'PYMMAP'
default['pyma']['passcode'] = '12345'
default['pyma']['gateway'] = 'noam.aprs2.net:14580'
default['pyma']['append_callsign'] = true
default['pyma']['source'] = 'rtl'
default['pyma']['rtl']['freq'] = 144.390
default['pyma']['rtl']['ppm'] = 0
default['pyma']['rtl']['gain'] = 0
default['pyma']['rtl']['offset_tuning'] = false
default['pyma']['rtl']['device_index'] = 0
default['pyma']['alsa']['device'] = 'default'
default['pyma']['beacon']['lat'] = 51.00000
default['pyma']['beacon']['lng'] = 10.00000
default['pyma']['beacon']['table'] = '/'
default['pyma']['beacon']['symbol'] = '&'
default['pyma']['beacon']['comment'] = 'PyMultimonAPRS iGate'
default['pyma']['beacon']['status']['text'] = 'PyMultimonAPRS Python Raspberry Pi iGate with RTL Dongle.'
default['pyma']['beacon']['status']['file'] = false
default['pyma']['beacon']['weather'] = false
default['pyma']['beacon']['send_every'] = 3600
default['pyma']['beacon']['ambiguity'] = 0
