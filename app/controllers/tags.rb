module LT
  module Controllers
    class Tags < Base
      get '/tags/:name' do
        @tag = Tag.find_or_create_by name: params[:name]
        @tag.to_json
      end
    end
  end
end
