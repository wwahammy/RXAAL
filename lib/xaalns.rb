module RXaal
  # represents a namespace for the purposes of RXAAL
  class XaalNS
    attr_accessor :url, :prefix
    
    def initialize (url, prefix)
      @url = url
      if prefix != nil
        @prefix = prefix
      end
    end
    
  end
end