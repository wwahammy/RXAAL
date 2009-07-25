require "test/unit"
require "ns_container"

class NSContainerTest < Test::Unit::TestCase
  
  def test_add_ns
    ns = NSContainer.new
    ns.add_ns("http://sample.com", "new")
    
    assert(ns.name_to_ns.key?("new"), "Not added to name_to_ns")
    assert(ns.uri_to_ns.key?("http://sample.com"), "Not added to uri_to_ns")
    
    name_ns = ns.name_to_ns["new"]
    uri_ns = ns.uri_to_ns["http://sample.com"]
    
    assert(name_ns == uri_ns, "Uri and Name NS' aren't the same")
    
    assert(ns.namespaces.index(name_ns) != nil, "NS not found in namespaces")
  end
end