module LT
  module Controllers
    class Base < Sinatra::Base
      set :views, "#{ Sinatra::Application.root }/views"
      set :public_folder, "/public"

      enable :static
    end
  end
end
