require "test/serializable_test"
module RXaal
  class XaalElementTest < SerializableTest
    def test_initialize
      
    end
    
    def test_no_id_set
      id = XaalElement.default_id_num
      e = XaalElement.new(@doc)
      assert_equal "XaalElement_"+ (id+1).to_s, e.id, "Id isn't class + 0"
      e1 = XaalElement.new(@doc)
      assert_equal "XaalElement_" + (id+2).to_s, e1.id, "Id isn't class + 1"
    end
    
    def test_id_set
      id = XaalElement.default_id_num
      e = XaalElement.new(@doc, "neato")
      assert_equal "neato", e.id, "Element id isn't correct"
      assert_equal id, XaalElement.default_id_num, "default_id_num was incremented"
    end
    
    def test_no_ns_set
      e = XaalElement.new(@doc, "neato")
      assert_equal e.ns, @doc.namespaces.name_to_ns[""], "NS isn't default" 
    end
    
    def test_ns_set
      ns = @doc.namespaces.add_ns("http://simple.com", "blank")
      e = XaalElement.new(@doc, "neato", ns)
      assert_equal ns, e.ns, "NS isn't custom"
    end
    
    def test_superclass_serialize
      e = XaalElement.new(@doc)
      id = e.id
      re = REXML::Element.new "none"
      e.superclass_serialize(re)
      assert_equal re.attributes["id"], id, "Attribute id isn't right"
      assert_equal "none", re.name, "Name was not the default"
      
      e.ns = @doc.namespaces.add_ns("http://simple.com", "blank")
      e.superclass_serialize(re)
      assert_equal "blank:none", re.expanded_name, "NS wasn't serialized"
    end
  end
end