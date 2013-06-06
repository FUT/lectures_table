module LT
  module Controllers
    class Application < Base
       binding.pry
      use Sass
      use Coffee
      use Pages
      use Lectures
      use Partials
    end
  end
end
