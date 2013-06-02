include Mongo

configure do
  connection = MongoClient.new('localhost', 27017)
  set :mongo_connection, connection
  set :mongo_db, connection.db('lectures_table')
end
