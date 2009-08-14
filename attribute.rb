module RXaal
  class Attribute
    attr_accessor_of_class String, :name
    attr_accessor_of_class XaalNS, :ns
    attr_accessor_of_class Integer, :value
    
    def initialize(_name, _ns, _value = nil)
      self.name = _name
      self.ns = _ns
      @value = _value
    end
  end
end