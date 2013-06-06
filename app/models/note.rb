class Note < MongoModel
  field :body

  embedded_in :lecture
end
