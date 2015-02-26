# encoding: utf-8

name             'pymultimonaprs'
maintainer       'Greg Albrecht'
maintainer_email 'gba@gregalbrecht.com'
license          'Apache License, Version 2.0'
description      'Installs/Configures pymultimonaprs'
long_description 'Installs/Configures pymultimonaprs'
version IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.2.0'


depends 'ark'
depends 'build-essential'
depends 'python'
depends 'supervisor'
