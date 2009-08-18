class Class
   def cattr_reader(*cvs)
       cvs.each do |cv|
         class_eval %Q[
          def self.#{cv}; @@#{cv} end
       ]
       end
   end
   
   def hierarchy
      (superclass ? superclass.hierarchy : []) << self
   end

  def name_minus_mod
    return name.split("::").last
  end
end