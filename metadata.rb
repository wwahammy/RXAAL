class Metadata < TopLevelElem
  @@DEFAULT_LANG = "en-us"
  
  def initialize
    super()
    @@DEFAULT_LANG.freeze
    @titles = Hash.new
    @subjects = Hash.new
    @keywords = Hash.new
    @descs = Hash.new
  end
  attr_accessor :auth_fname, :auth_lname, :auth_affil, :auth_email
  attr_accessor :app_name, :app_version
  # we check if its actually a uri
  attr_reader :app_homepage
    
  def app_homepage=(uri)
      if uri =~ /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
        @app_homepage = uri
      end
  end

  def add_title(subject)
    add_title(title, @DEFAULT_LANG)
  end
  
  def add_title(title, lang)
    @titles[lang] = title
  end
  
  def add_subject(subject)
    add_subject(subject, @DEFAULT_LANG)
  end
  
  def add_subject(title, lang)
    @subjects[lang] = subject
  end
  
 def add_keyword(keyword)
    add_keyword(keyword, @DEFAULT_LANG)
  end
  
  def add_keyword(title, lang)
    @keywords[lang] = keyword
  end
  
  def add_desc(desc)
    add_desc(desc, @DEFAULT_LANG)
  end
  
  def add_desc(title, lang)
    @descs[lang] = desc
  end
end