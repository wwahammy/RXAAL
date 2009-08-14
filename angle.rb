module RXaal
  class Angle < GraphicPrim
    attr_accessor_of_class Integer, :total, :start
    
    def initialize(doc, id = nil)
      super(doc, id)
    end
  end
end