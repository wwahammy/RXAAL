require 'graphic_prim'
module RXaal
  class Rectangle < GraphicPrim
    attr_accessor :round_x, :round_y, :depth, :coor1, :coor2
    def initialize
      super
    end
  end
end