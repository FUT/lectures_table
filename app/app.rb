#!/usr/bin/env ruby

require 'app/libraries'
require 'app/initializers/all'
require 'app/handlers/all'

module LT
  class App < Sinatra::Base
    use Handlers::Sass
    use Handlers::Coffee
    use Handlers::Home

    set :public_dir, Sinatra::Application.root + '/public'
  end
end
