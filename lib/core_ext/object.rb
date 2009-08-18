class Object
  def smrt_autoload(*syms)
    syms.each {|sym|
      autoload(sym, sym.to_s.underscore + ".rb")
    }
  end
end