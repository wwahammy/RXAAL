require "test/unit"
require "metadata"
class MetadataTest < Test::Unit::TestCase
  include RXaal
  def test_serialize
    metadata = Metadata.new
    methods = metadata.public_methods.select { |i| i.to_s =~ /.*#(app_|auth_)\w*=.*/ }
    methods.each {|name|
      metadata.send(name.to_sym, "value")
      serialize = metadata.send(serialize?)
      assert(serialize, "serialization not done right")
      metadata = Metadata.new
    }
  end
end
