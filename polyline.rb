module RXaal
  class Polyline < GraphicPrim
    attr_accessor :depth, :coordinates, :closed
    def initialize
      super
      @coordinates = Array.new
    end
  end
end