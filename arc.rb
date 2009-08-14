require 'graphic_prim'
require 'coordinate'
require 'angle'
module RXaal
  class Arc < GraphicPrim
    attr_accessor_of_class Coordinate, :center, :radius
    attr_accessor_of_class Angle, :angle
    attr_accessor_of_class Integer, :depth
    def initialize
      super
    end
  end
end