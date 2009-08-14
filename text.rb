require 'graphic_prim'
require 'contents'
module RXaal
  class Text < GraphicPrim
    attr_accessor_of_class Contents, :contents
    def initialize
      super
    end
  end
end