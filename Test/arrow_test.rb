require "test/serializable_test"
class ArrowTest < SerializableTest
  include RXaal
  
  def test_initialize
    flunk "Not yet implemented"
  end
  
  def test_boolean_equals_true
    [:forward, :backward].each {|s|
      arrow = Arrow.new(@doc)
      arrow.send("#{s.to_s}=", true)
      assert arrow.send(s), s.to_s + "is not true."
    }
  end
  
  def test_boolean_equals_false
    [:forward, :backward].each {|s|
      arrow = Arrow.new(@doc)
      arrow.send("#{s.to_s}=", false)
      assert_equal false, arrow.send(s), s.to_s + "is not false."
    }
  end
  
  def test_boolean_only
    [:forward, :backward].each {|s|
      arrow = Arrow.new(@doc)
      arrow.send("#{s.to_s}=", "true")
      assert_not_equal "true", arrow.send(s), s.to_s + "accepts non-booleans."
      assert_nil arrow.send(s), s.to_s + "isn't nil."
    }
  end
  
  def test_boolean_keep
    [:forward, :backward].each {|s|
      arrow = Arrow.new(@doc)
      arrow.send("#{s.to_s}=", false)
      assert_equal false, arrow.send(s), s.to_s + "is not false."
      arrow.send("#{s.to_s}=", "false")
      assert_equal false, arrow.send(s), s.to_s + "was modified."
    }
  end
end