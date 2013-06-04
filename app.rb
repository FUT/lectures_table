#!/usr/bin/env ruby

require 'app/libraries'
require 'lib/load_all'

load_all 'app/initializers/*', 'app/controllers/*'

module LT
  class App < Sinatra::Base
    use Controllers::Sass
    use Controllers::Coffee
    use Controllers::Pages

    set :public_dir, Sinatra::Application.root + '/public'
  end
end
