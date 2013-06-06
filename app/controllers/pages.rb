module LT
  module Controllers
    class Pages < Base
      helpers Sinatra::Cookies

      set :views, "#{ Sinatra::Application.root }/views"
    end
  end
end
