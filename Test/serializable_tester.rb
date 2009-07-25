require "test/unit"
require "serializable"
class SerializableTester < Test::Unit::TestCase
  def test_serialize_overridden
    
    begin
      self.serialize(nil)
    rescue NotImplementedError
      flunk "serialize not overridden"
    end
  end
end