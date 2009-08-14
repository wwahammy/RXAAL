require 'serializable'
module RXaal
  class Contents
    include Serializable
    attr_accessor_of_class String, :text, :lang 
  end
end