module JHAVE
  class TFQuestion < GenericQuestion
    attr_accessor_of_boolean :answer
    
    def initialize(doc, refSeq, question)
      super(doc, refSeq, question)
    end
    
    
    
    def xaal_serialize(parent)
      if @answer != nil
        e = Element.new "question"
        parent.elements << e
        e.attributes["type"] = "TFQUESTION"
        ao = AnswerOption.new(@answer.to_s, @doc, true)
        self.options << ao
        
        superclass_serialize(e)
      end
    end
  end
end