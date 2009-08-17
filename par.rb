module RXaal
  class Par < XaalElement
    attr_reader :show, :hide
    #attr_accessor_of_class :change_style
    
    def initialize(doc)
      super(doc)
      @show = ShowHide.new(true)
      @hide = ShowHide.new(false)
    end
    
    def xaal_serialize(parent)
      e = Element.new "par"
      parent << e
      [:show, :hide].each {|sh|
        temp = self.send(sh)
        if temp.length > 0
          temp.xaal_serialize(e)
        end
      }
      
      superclass_serialize(e)
    end
  end
end