module LT
  module Handlers
    class Home < Sinatra::Base
      set :views, "#{ Sinatra::Application.root }/views"

      get '/' do
        slim :home, layout: :application
      end
    end
  end
end
