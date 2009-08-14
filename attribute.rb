require "r_xaal_config"
require "xaalns"
module RXaal
  class Attribute
    attr_accessor_of_class String, :name
    attr_accessor_of_class XaalNS, :ns
  end
end