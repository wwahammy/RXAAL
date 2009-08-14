module RXaal
  module Serializable
    # serializes the current element in the REXML tree with parent as its
    # parent element
    def xaal_serialize(parent)
      raise NotImplementedError, "must be overrriden"
    end
  end
end
