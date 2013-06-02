#!/usr/bin/env ruby

$:.unshift '.'

require 'libraries'
require 'mongo_config'

class SassHandler < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/templates/sass'

  get '/templates/sass/*.css' do
    filename = params[:splat].first
    sass filename.to_sym
  end
end

class CoffeeHandler < Sinatra::Base
  set :views, File.dirname(__FILE__) + '/templates/coffee'

  get "/templates/coffee/*.js" do
    filename = params[:splat].first
    coffee filename.to_sym
  end
end

class MyApp < Sinatra::Base
  use SassHandler
  use CoffeeHandler

  set :public_dir, File.dirname(__FILE__) + '/public'
  set :views, File.dirname(__FILE__) + '/views'

  get '/' do
    slim :home, layout: :application
  end
end

MyApp.run! :port => 3000
