#!/usr/bin/env ruby

require 'app/libraries'
require 'lib/load_all'

load_all 'app/initializers/*'

module LT
  class App < Sinatra::Base
    load_all 'app/controllers/*'

    use Controllers::Sass
    use Controllers::Coffee
    use Controllers::Pages

    set :public_dir, Sinatra::Application.root + '/public'
  end
end
