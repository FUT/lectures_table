configure do
  Mongoid.load!('config/database.yml', :production)
  binding.pry
end
