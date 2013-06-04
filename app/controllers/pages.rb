module LT
  module Controllers
    class Pages < Sinatra::Base
      set :views, "#{ Sinatra::Application.root }/views"
    end
  end
end
