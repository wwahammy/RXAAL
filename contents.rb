require 'serializable'
class Contents
  include Serializable
  attr_accessor :text, :lang 
end