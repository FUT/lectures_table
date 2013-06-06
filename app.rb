#!/usr/bin/env ruby

require 'app/libraries'

# Define load_all method
require 'lib/load_all'

load_all 'app/initializers/*', 'lib/*'

# Load base controller, other controllers, main application controller
require 'app/controllers/base'
load_all 'app/controllers/*'
require 'app/application'
