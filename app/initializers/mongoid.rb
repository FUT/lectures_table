configure do
  Mongoid.load!('config/database.yml', :production)
end
