module LT
  module Controllers
    class Pages < Base
      get '/' do
        slim :home, layout: :application
      end
    end
  end
end
