require 'serializable'
module RXaal
  class Contents
    include Serializable
    attr_accessor :text, :lang 
  end
end