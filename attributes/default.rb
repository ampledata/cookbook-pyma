# pymultimonaprs default Attributes.
#
# Attributes:: default
# Cookbook:: pymultimonaprs
# Author:: Greg Albrecht W2GMD <gba@gregalbrecht.com>
# Copyright:: Copyright 2015 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/ampledata/cookbook-pymultimonaprs
#


default['pymultimonaprs']['virtualenv_path'] = '/srv/pymultimonaprs'
default['pymultimonaprs']['config_path'] = '/etc/pymultimonaprs.json'
default['pymultimonaprs']['callsign'] = 'PYMMAP'
default['pymultimonaprs']['passcode'] = '12345'
default['pymultimonaprs']['gateway'] = 'noam.aprs2.net:14580'
default['pymultimonaprs']['append_callsign'] = true
default['pymultimonaprs']['source'] = 'rtl'
default['pymultimonaprs']['rtl']['freq'] = 144.390
default['pymultimonaprs']['rtl']['ppm'] = 0
default['pymultimonaprs']['rtl']['gain'] = 0
default['pymultimonaprs']['rtl']['offset_tuning'] = false
default['pymultimonaprs']['rtl']['device_index'] = 0
default['pymultimonaprs']['alsa']['device'] = 'default'
default['pymultimonaprs']['beacon']['lat'] = 51.00000
default['pymultimonaprs']['beacon']['lng'] = 10.00000
default['pymultimonaprs']['beacon']['table'] = '/'
default['pymultimonaprs']['beacon']['symbol'] = '&'
default['pymultimonaprs']['beacon']['comment'] = 'PyMultimonAPRS iGate'
default['pymultimonaprs']['beacon']['status']['text'] = 'PyMultimonAPRS Python Raspberry Pi iGate with RTL Dongle.'
default['pymultimonaprs']['beacon']['file'] = false
default['pymultimonaprs']['beacon']['weather'] = false
default['pymultimonaprs']['beacon']['send_every'] = 3600
default['pymultimonaprs']['beacon']['ambiguity'] = 0
