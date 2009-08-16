require "rexml/element"
module RXaal
  module Serializable
    include REXML
    # serializes the current element in the REXML tree with parent as its
    # parent element
    def xaal_serialize(parent)
      raise NotImplementedError, "must be overrriden"
    end
  end
end
