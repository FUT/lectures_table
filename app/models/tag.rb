class Tag < MongoModel
  field :name

  embeds_many :lectures
end
