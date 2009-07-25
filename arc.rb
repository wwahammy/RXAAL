require 'graphic_prim'
module RXaal
  class Arc < GraphicPrim
    attr_accessor :center, :radius, :angle, :depth
    def initialize
      super
    end
  end
end