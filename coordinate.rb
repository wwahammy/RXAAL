module RXaal
  class Coordinate < XaalElement
    attr_accessor :xpos, :ypos
    def initialize(xpos, ypos)
      super()
      self.xpos= xpos
      self.ypos= ypos
    end
  end
end