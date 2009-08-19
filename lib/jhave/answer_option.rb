require "rexml/element"
module JHAVE
  class AnswerOption < XaalElement
    attr_accessor_of_boolean :is_correct
    attr_accessor :value
    
    def initialize(_value, doc, is_correct=nil)
      super(doc, nil, doc.namespaces.uri_to_ns[JHAVE_URI])
      @is_correct = _is_correct
      @value = _value
    end
   
    def xaal_serialize(parent)
      e = Element.new "answer_option"
      parent.elements << e
      if @is_correct != nil
        e.attributes["is_correct"] = @is_correct ? "yes" : "no"
      end
      e.text = @value.to_s
      superclass_serialize(e)
    end
  end
end