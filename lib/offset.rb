require "enum/offset_mode"
require "enum/anchor"
require "r_xaal_error"
require "xaal_element"

module RXaal
  class Offset < XaalElement
    attr_accessor_of_class Integer, :x, :y
    attr_reader :no_base_object
    attr_reader :base_object, :node, :base_location, :baseline_of
   
    def initialize
      super
      @mode = Enum::OffsetMode::CENTER
      @anchor = Enum::Anchor::C
      @no_base_object = true
    end
    
    def no_base_object=(n)
      @no_base_object = true
      
    end
    
    def base_object=(n)
     
    end
    
    def node=(n)
      reset_base false
      @node = n
    end
    
    def base_location=(n)
      if (n.class != RXaal::Coordinate)
        raise RXaalError("'n' was not of the type RXaal::Coordinate")
      end
      reset_base
      @base_location = n
    end
    
    def baseline_of=(n)
      if n.class != RXaal::Text
        raise RXaalError("'n' was not of the type RXaal::Text")
      end
      reset_base
      @baseline_of = n
    end
    
    
    private
    
    def reset_base(include_base_obj = true)
      if (include_base_obj)
        @base_object = nil
       end
      @base_location = nil
      @baseline_of = nil
      @node = nil
    end
    
  
  end
end