source 'https://rubygems.org'

gemlist = File.read('app.rb').scan(%r{^.*require.*'(?<gem>[^'"]*)'$}).flatten

gemlist.each { |gemname| gem gemname }
