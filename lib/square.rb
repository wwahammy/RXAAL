require 'rectangle'
module RXaal
  class Square < Rectangle
    
    def initialize
      super
    end
    
    def coordinate
      return self.coor1
    end
    
    def coordinate=(new_value)
      self.coor1=(new_value)
    end
    
    private 
    
    def coor1
      return super
    end
    
    def coor1=(n)
      return super(n)
    end
    
    def coor2
      return nil
    end
    
    def coor2=(n)
      return nil
    end
  end
end