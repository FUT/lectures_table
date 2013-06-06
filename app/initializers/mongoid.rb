configure do
   Mongoid.configure do |config|
    name = 'lectures_table'
    host = 'localhost'
    config.master = Mongo::Connection.new.db(name)
    config.slaves = [
      Mongo::Connection.new(host, 27017, :slave_ok => true).db(name)
    ]
    config.persist_in_safe_mode = false
  end
end