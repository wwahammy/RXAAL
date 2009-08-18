require "rexml/element"

module RXaal
  class XaalElement
    include Serializable
    @@default_id_num=0
    attr_accessor_of_class XaalNS, :ns
    attr_reader :refs
    attr_reader :id
    attr_reader :doc
    cattr_reader :default_id_num
    
    def initialize(doc, id=nil, elem_ns = nil)
      @refs = 0
      @attribs = Array.new
      if (elem_ns != nil)
        @ns = elem_ns
      else
        @ns = doc.namespaces.name_to_ns[""]
      end
      
      @doc = doc
      
      if id == nil
        klass = self.class
        
        id = klass.name_minus_mod + "_" + XaalElement.get_new_default_id.to_s
      end
      
      @id = id 
    end
    
    def add_attribute(name, value, attrib_ns = ns)
      temp = Attribute.new
      temp.name = name
      temp.value = value
      temp.ns = attrib_ns
      @attribs.push(temp)
    end
    
    # increments the ref count of new_obj and decrements the ref count of curr_obj
    def self.modify_ref(curr_obj, new_obj)
      if (curr_obj != nil)
        curr_obj.rm_ref
      end
      
      new_obj.add_ref
    end
    
    #decrements self's ref count by 1
    def rm_ref
      @refs -= 1
    end
    
    #increments self's ref count by 1
    def add_ref
      @refs +=1
    end
    
    def self.get_new_default_id
      if @@default_id_num == 0
        @@default_id_num = 1
        return 0
      else
        return @@default_id_num += 1
      end
    end
    
    def superclass_serialize(element)
      element.attributes["id"] = @id
      
      if @ns != doc.namespaces.name_to_ns[""]
        element.name = @ns.prefix + ":" + element.name
      end
    end
  end
end