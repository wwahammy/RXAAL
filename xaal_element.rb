require "serializable"
require "r_xaal_config"
require "rexml/element"
require "xaalns"
module RXaal
  class XaalElement
    include Serializable
    attr_accessor_of_class XaalNS, :ns
    attr_reader :refs
    attr_reader :id
    
    def initialize(doc, id=nil, elem_ns = nil)
      @refs = 0
      @attribs = Array.new
      if (elem_ns != nil)
        @ns = elem_ns
      else
        @ns = doc.namespaces.name_to_ns.get("")
      end
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
    
    def superclass_serialize(element)
    
    end
  end
end