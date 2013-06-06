module LT
  module Controllers
    class Coffee < Base
      set :views, "#{ Sinatra::Application.root }/assets/coffee"

      get "/app/assets/coffee/*.js" do
        filename = params[:splat].first
        coffee filename.to_sym
      end
    end
  end
end
