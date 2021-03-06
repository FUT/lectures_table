#!/usr/bin/env ruby

unless $LOAD_PATH.include? '.'
  $LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))
end

begin
  require 'env'
rescue LoadError
  nil
end

require 'app'

LT::Controllers::Application.run! port: 3000
