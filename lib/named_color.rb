require "generic_color"
module RXaal
  class NamedColor < GenericColor
    attr_accessor_of_class String, :name
    def initialize(_name)
      super()
      @name = _name
    end
    #must be style object
    def xaal_serialize(parent)
      elem = Element.new "color"
      elem.attributes["name"] = @name
      parent.elements << elem
    end
  end
end