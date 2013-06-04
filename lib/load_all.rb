def load_all(*dirs)
  [dirs].flatten.each do |dir|
    Dir[dir].each do |file|
      require file
    end
  end
end
