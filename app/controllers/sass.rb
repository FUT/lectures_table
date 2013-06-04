module LT
  module Controllers
    class Sass < Sinatra::Base
      set :views, "#{ Sinatra::Application.root }/assets/sass"

      get '/app/assets/sass/*.css' do
        filename = params[:splat].first
        sass filename.to_sym
      end
    end
  end
end
