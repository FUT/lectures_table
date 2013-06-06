#!/usr/bin/env ruby

require 'app/libraries'

# Define load_all method
require 'lib/load_all'

load_all 'app/initializers/*', 'lib/*'

require 'app/models/mongo_model'
load_all 'app/models/*'

# Load base controller, other controllers, main application controller
require 'app/controllers/base'
load_all 'app/controllers/*'
require 'app/application'
