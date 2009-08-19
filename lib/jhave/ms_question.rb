module JHAVE
  class MSQuestion < GenericQuestion
    
    def initialize(doc, refSeq, question)
        super(doc, refSeq, question)
    end
      
    def xaal_serialize(parent)
      e = Element.new "question"
      parent.elements << e
      e.attributes["type"] = "MSQUESTION"
      
      superclass_serialize(e)
    end
  end
end