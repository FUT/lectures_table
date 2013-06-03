#!/usr/bin/env ruby

$:.unshift '.'

require 'libraries'
require 'mongo_config'

module LT
  class App < Sinatra::Base
    use Handlers::Sass
    use Handlers::Coffee

    set :public_dir, File.dirname(__FILE__) + '/public'
  end
end

LT::App.run! :port => 3000
