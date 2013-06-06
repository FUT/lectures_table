module LT
  module Controllers
    class Application < Base
      use Sass
      use Coffee
      use Pages
      use Tags
      use Partials
    end
  end
end
