require 'graphic_prim'
require 'coordinate'
module RXaal
  class Rectangle < GraphicPrim
    attr_accessor_of_class Integer, :round_x, :round_y, :depth
    attr_accessor_of_class Coordinate, :coor1, :coor2 
    
    def initialize
      super
    end
  end
end