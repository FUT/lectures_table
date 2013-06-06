module LT
  module Controllers
    class Base < Sinatra::Base
      set :views, "#{ Sinatra::Application.root }/views"
      set :public_dir, "#{ Sinatra::Application.root }/public"
    end
  end
end
