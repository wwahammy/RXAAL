require 'graphic_prim'
module RXaal
  class Circle < GraphicPrim
  
    attr_accessor :center, :radius, :depth
    def initialize
      super
    end
  end
end