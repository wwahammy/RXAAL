module RXaal
  module StyleMod
    def self.included(base)
      base.extend(ClassMethods)
    end
    
    module ClassMethods
      def style_attr_accessor(*symbols)
        symbols.each { |s|
          
          style_get(s)
          
          define_method("#{s}=") do |val|
            instance_variable_set("@#{s}", val)
          end
        }
      end
      
      def style_attr_accessor_of_class(klass, *symbols)
        symbols.each { |s|
          style_get(s)
          
          define_method("#{s}=") do |val|
            if val.class == klass
              instance_variable_set("@#{s}", val)
            end
          end
        }
        
        
      end
      def style_attr_accessor_of_bool( *symbols)
        symbols.each { |s|
          style_get(s)
          
          define_method("#{s}=") do |val|
            if val.class == TrueClass || val.class == FalseClass
              instance_variable_set("@#{s}", val)
            end
          end
        }
        
        
      end
      
      def style_get(s)
        define_method(s) do
          symb = instance_variable_get("@#{s}")
          if symb != nil
            symb
          else
            if self.uses != nil
              self.uses.send(s)
            else
              nil
            end
          end
        end
      end
      
    end
  end
end