module LT
  module Controllers
    class Application < Base
      use Sass
      use Coffee
      use Pages
      use Lectures
      use Partials
    end
  end
end
