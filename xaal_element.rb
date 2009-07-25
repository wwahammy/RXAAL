require "serializable"
module RXaal
  class XaalElement
    include Serializable
    attr_accessor :ns
    
    def initialize
      @attribs = Array.new
    end
    
    def add_attribute(name, value, attrib_ns = nil)
      temp = Attribute.new
      temp.name = name
      temp.value = value
      temp.ns = attrib_ns
      @attribs.push(temp)
    end
  end
end