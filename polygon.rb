require "polyline"

module RXaal
  class Polygon < Polyline
    
    def initialize
      super
      self.closed=true
    end
    
    def closed
      super
    end
    
    private
   
    
    def closed=(new_value)
      super
    end
  end
end