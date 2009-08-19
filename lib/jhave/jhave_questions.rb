module JHAVE
  class JHAVEQuestions < TopLevelElem
    attr_accessor :questions
    def initialize(doc, id= nil)
      super(doc, nil, doc.namespaces.uri_to_ns[JHAVE_URI])
    end
    
    def xaal_serialize(parent)
      e = Element.new "questions"
      parent.elements << e
      
      questions.each { |q| 
        q.xaal_serialize(e)
      }
      
      superclass_serialize(e)
    end
  end
end