# encoding: utf-8

name             'pyma'
maintainer       'Greg Albrecht'
maintainer_email 'oss@undef.net'
license          'Apache License, Version 2.0'
description      'Installs/Configures pyma'
long_description 'Installs/Configures pyma'
version IO.read(File.join(File.dirname(__FILE__), 'VERSION')) rescue '0.3.0'


depends 'ark'
depends 'build-essential'
depends 'poise-python'
depends 'application_python'
depends 'supervisor'
depends 'application_git'
