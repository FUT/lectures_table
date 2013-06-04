module LT
  module Controllers
    class Pages < Sinatra::Base
      get '/' do
        slim :home, layout: :application
      end
    end
  end
end
