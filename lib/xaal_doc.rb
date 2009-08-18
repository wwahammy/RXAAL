#This file is part of Foobar.
#
#Foobar is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#  Foobar is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with Foobar.  If not, see <http://www.gnu.org/licenses/>.
#


require 'rexml/document'
require 'rexml/xmldecl'

module RXaal
  class XaalDoc
    include Serializable
    XAAL_NS_URI = "http://www.cs.hut.fi/Research/SVG/XAAL"
    XSI_URI = "http://www.w3.org/2001/XMLSchema-instance"
    XAAL_VERSION = "0.1"
    attr_reader :xaal_version
    attr_reader :namespaces
    attr_reader :defs, :global_styles, :metadata
    attr_reader :general_options
    attr_reader :initials, :seqs
    
    attr_reader :custom_top_level_elems
    
    
    def initialize
      @namespaces = NSContainer.new
      @namespaces.add_ns(XAAL_NS_URI)
      @namespaces.add_ns(XSI_URI, "xsi")
      @top_level_elems = Array.new
      @metadata = Metadata.new(self)
      #self.styles = StyleContainer.new
      @initials = Array.new
      @seqs = Array.new
      @custom_top_level_elems = BoundArray.new(TopLevelElem)
    end
    
    def add_option (name, value)
      self.general_options[name] = value
    end
    
    
    
    def xaal_serialize(parent=nil)
      
      doc = REXML::Document.new 
      doc << REXML::XMLDecl.default
      root = REXML::Element.new "xaal"
      doc.add(root)
      
      self.namespaces.each { |ns|
        pref = ns.prefix
        url = ns.url
        if (pref == "")
          #its the default
          root.add_namespace(url)
        else
          #its not
          root.add_namespace(pref, url)
        end
      }
      root.add_attribute('version', XAAL_VERSION)
      root.add_attribute(@namespaces.uri_to_ns[XSI_URI].prefix << ":schemaLocation", "http://www.cs.hut.fi/Research/SVG/XAAL xaal.xsd")
      
      self.metadata.xaal_serialize(root)
      init = REXML::Element.new "initial"
      root.elements << init
      
      initials.each { |i|
        i.xaal_serialize(init)
      }
      anim = REXML::Element.new "animation"
      root.elements << anim
      seqs.each { |s|
        s.xaal_serialize(anim)  
      }
      output_str = String.new
      doc.write(output_str, 3)
      
      return output_str
    end
  end
end