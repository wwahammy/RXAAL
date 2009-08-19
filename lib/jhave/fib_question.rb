require "rexml/element"
module JHAVE
  class FIBQuestion < GenericQuestion
    
   def initialize(doc, refSeq, question)
        super(doc, refSeq, question)
      end
      
      def xaal_serialize(parent)
        e = Element.new "question"
        parent.elements << e
        e.attributes["type"] = "FIBQUESTION"
        
        superclass_serialize(e)
      end
  end
end