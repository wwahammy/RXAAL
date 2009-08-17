require "test/test_base"

class MetadataTest < TestBase
  include RXaal
  def test_serialize
    metadata = Metadata.new(@doc)
    methods = metadata.public_methods.select { |i| i.to_s =~ /.*#(app_|auth_)\w*=.*/ }
    methods.each {|name|
      metadata.send(name.to_sym, "value")
      serialize = metadata.send(serialize?)
      assert(serialize, "serialization not done right")
      metadata = Metadata.new
    }
  end
  
  def test_takes_string
    metadata = Metadata.new(@doc)
    methods = metadata.public_methods.select { |i| i.to_s =~ /.*#(app_|auth_)\w*=.*/ }
    methods.each {|name|
      metadata.send(name.to_sym, "value")
      val = metadata.send(name.chop)
      assert("value", val)
    }
  end
  
  def test_wont_take_integer
    metadata = Metadata.new(@doc)
    methods = metadata.public_methods.select { |i| i.to_s =~ /.*#(app_|auth_)\w*=.*/ }
    methods.each {|name|
      metadata.send(name.to_sym, "value")
      val = metadata.send(name.chop)
      assert_nil val
    }
  end
end
