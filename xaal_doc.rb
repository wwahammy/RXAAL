require 'rexml/document'
require 'serializable'
require 'ns_container'
include REXML

class XaalDoc
  include Serializable
  XAAL_NS_URI = "http://www.cs.hut.fi/Research/SVG/XAAL"
  @xaal_version = 0.1
  attr_reader :xaal_version
  attr_reader :namespaces
  attr_reader :defs, :initials, :metadata
  attr_reader :general_options
  
  def initialize
    @namespaces = NSContainer.new
    @namespaces.add_ns(XAAL_NS_URI)
    @top_level_elems = Array.new
  end
  
  def add_option (name, value)
    self.general_options['name'] = value
  end
end