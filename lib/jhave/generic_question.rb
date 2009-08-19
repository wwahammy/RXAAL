require "rexml/element"
module JHAVE
  class GenericQuestion < XaalElement
    attr_accessor :question
    attr_accessor :options
    
    def initialize(doc, refSeq, question)
      super(doc, doc.seqs.index(refSeq), doc.namespaces.uri_to_ns[JHAVE_URI])
      @question = question
      @options = Array.new
    end
    
    def superclass_serialize(elem)
     if @question != nil && @options.length > 0
       qe = Element.new(@ns.prefix +":question_text")
       elem.elements << qe
       qe.text = @question
       
       options.each { |o| 
        o.xaal_serialize(elem)
       }
     end
    end
    
  end
end