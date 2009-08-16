
module RXaal
  class ShowHide < BoundArray
    include Serializable

    
    attr_reader :show
    
    def initialize(show)
      super(XaalElement)
      @show = show
    end
    
    def xaal_serialize(parent)
      e_name = @show ? "show" : "hide"
      e = Element.new e_name
      parent.elements << e
      
      each { |obj|
        t_obj = Element.new "object_ref"
        t_obj.attributes["id"] = obj.id
        e.elements << t_obj
      }
    end
  end
end