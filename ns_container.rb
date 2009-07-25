require "xaalns"
module RXaal
  class NSContainer
    include Enumerable
    
    attr_reader :namespaces, :name_to_ns, :uri_to_ns
    
    def initialize
      @namespaces = Array.new
      @name_to_ns = Hash.new
      @uri_to_ns = Hash.new
    end
    
    def add_ns (uri, prefix="")
      ns = XaalNS.new(uri, prefix)
      if @uri_to_ns[uri] != nil
        namespaces = @namespaces.collect { |i| i != @uri_to_ns[uri]}
        @namespaces = namespaces
      end
      @namespaces.push(ns)
      @uri_to_ns[uri] = ns
      @name_to_ns[prefix] = ns
    end
      
  end
end