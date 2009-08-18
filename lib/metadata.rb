require "rexml/element"
module RXaal
  class Metadata < TopLevelElem
    include MetadataMod
    @@DEFAULT_LANG = "en-us"
    
    def initialize(doc)
      super(doc)
      @@DEFAULT_LANG.freeze
      @titles = Hash.new
      @subjects = Hash.new
      @keywords = Hash.new
      @descs = Hash.new
      @serialize = false
    end
    
    serialize_accessor_of_class String, :auth_fname, :auth_lname, :auth_affil, :auth_email, 
            :app_name, :app_version
    
    # we check if its actually a uri
    attr_reader :app_homepage
      
    def app_homepage=(uri)
        if uri =~ /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
          @app_homepage = uri
          @serialize = true
        end
    end
  
    def add_title(subject)
      add_title(title, @@DEFAULT_LANG)
    end
    
    def add_title(title, lang)
      @titles[lang] = title
      @serialize = true
    end
    
    def add_subject(subject)
      add_subject(subject, @@DEFAULT_LANG)
    end
    
    def add_subject(title, lang)
      @subjects[lang] = subject
      @serialize = true
    end
    
   def add_keyword(keyword)
      add_keyword(keyword, @@DEFAULT_LANG)
    end
    
    def add_keyword(title, lang)
      @keywords[lang] = keyword
      @serialize = true
    end
    
    def add_desc(desc)
      add_desc(desc, @@DEFAULT_LANG)
    end
    
    def add_desc(title, lang)
      @descs[lang] = desc
      @serialize = true
    end
    
    def xaal_serialize(parent)
      if (serialize?)
        metadata = Element.new "metadata"
        parent.add metadata
      end
    end
    
    private
    def serialize?
      return @serialize
    end
  end
end