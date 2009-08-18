module RXaal
  module MetadataMod
    def self.included(base)
        base.extend(ClassMethods)
     end
     module ClassMethods
       def serialize_accessor(sym)
        define_method(sym) do
          instance_variable_get("@#{sym}")
        end
        
        define_method("#{sym}=") do |v|
          instance_variable_set("@#{sym}", v)
          instance_variable_set("@serialize", true)
        end
      end
      
      def serialize_accessor_of_class(klass, *syms)
        syms.each { |sym|
          define_method(sym) do
            instance_variable_get("@#{sym}")
          end
          
        define_method("#{sym}=") do |v|
          if v.class == klass
            instance_variable_set("@#{sym}", v)
            instance_variable_set("@serialize", true)
          end
        end
        }
      end
     end
  end
end