# encoding: utf-8

name             'pyma'
maintainer       'Greg Albrecht'
maintainer_email 'oss@undef.net'
license          'Apache License, Version 2.0'
description      'Installs/Configures pyma'
long_description 'Installs/Configures pyma'
version IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.2.0'


depends 'ark'
depends 'build-essential'
depends 'python'
depends 'supervisor'
