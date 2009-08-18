require 'graphic_prim'
module RXaal
  class Circle < GraphicPrim
  
    attr_accessor_of_class Coordinate, :center, :radius
    attr_accessor_of_class Integer, :depth
    def initialize
      super
    end
  end
end