#!/usr/bin/env ruby

require 'app/libraries'
require 'app/initializers/all'
require 'app/handlers/all'

module LT
  class App < Sinatra::Base
    use LT::Handlers::Sass
    use LT::Handlers::Coffee

    set :public_dir, File.dirname(__FILE__) + '/public'
    set :views, File.dirname(__FILE__) + '/views'

    get '/' do
      slim :home, layout: :application
    end
  end
end
