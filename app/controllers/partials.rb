module LT
  module Controllers
    class Pages < Sinatra::Base
      get '/partials/*' do
        filename = params[:splat].first
        slim :"partials/#{ filename }"
      end
    end
  end
end
