module LT
  module Controllers
    class Partials < Base
      get '/partials/*' do
        filename = params[:splat].first
        slim :"partials/#{ filename }"
      end
    end
  end
end
