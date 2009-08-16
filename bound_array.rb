=begin
    An array whose elements must be of the bound_class.
=end
require 'forwardable'
module RXaal

  class BoundArray 
    extend Forwardable
    attr_reader :bound_class
    def_delegators :@inner_array, :&, :*
    def_delegators :@inner_array, :delete, :delete_at, :delete_if
    def_delegators :@inner_array, :each, :each_index
    def_delegators :@inner_array, :fetch, :first, :include?, :index, :join, :length, :map, :pop
    def_delegators :@inner_array, :reverse, :reverse!, :reverse_each, :rindex, :select, :shift, :slice!
    def_delegators :@inner_array, :[], :sort, :sort!, :to_a, :uniq, :uniq!, :values_at
    
    def initialize(klass)
      @bound_class = klass
      @inner_array = Array.new
    end
    
    def <<(obj)
      type_confirmation(obj) {
        return @inner_array << obj
      }
    end
    
    def []=(index, obj)
      type_confirmation(obj) {
        return @inner_array[index] = obj
      }
    end
    
    def +(other_array)
      if (other_array.class == BoundArray && other_array.bound_class == @bound_class)
         new_array = BoundArray.new(@bound_class)
         [@inner_array,other_array.to_a].each {|a|
          a.each {|real|
            new_array << real
          }
         }
         return new_array
      end
      return self
    end
    
    private
    
    def type_confirmation (obj, &block)
      
      if obj.class.hierarchy.include?(@bound_class)
        return block.call
      end
    end
  end
end