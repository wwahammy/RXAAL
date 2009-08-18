class Module
  def attr_accessor_bool(name, &block)
     define_method(name) do  
       instance_variable_get("@#{name}")
     end        

     define_method("#{name}=") do |val|
      if block.call(val)
        instance_variable_set("@#{name}",val)
      end
     end
 end
 def attr_accessor_of_boolean(*accessor)
   accessor.each {|a|
    attr_accessor_bool(a) {|o| o.class == TrueClass || o.class == FalseClass}
   }
 end
 def attr_accessor_of_class (klass, *accessor)
   accessor.each {|a|
    attr_accessor_bool(a) {|o| o.class == klass}
   }
 end
end