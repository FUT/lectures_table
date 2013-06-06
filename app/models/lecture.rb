class Lecture < MongoModel
  field :title
  field :description

  embedded_in :tag
  embeds_many :notes
end
