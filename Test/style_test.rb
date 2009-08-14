
require "test/serializable_test"

class StyleTest < SerializableTest
 include RXaal
  def test_initialize
    flunk "Not yet implemented"
  end
 
  def test_boolean_equals_true
    [:forward_arrow, :backwards_arrow].each {|s|
      style = Style.new(@doc)
      style.send("#{s.to_s}=", true)
      assert_equal true, style.send(s), s.to_s + "is not true."
    }
  end
  
  def test_boolean_equals_false
    [:forward_arrow, :backwards_arrow].each {|s|
      style = Style.new(@doc)
      style.send("#{s.to_s}=", false)
      assert_equal false, style.send(s), s.to_s + "is not false."
    }
  end
  
  def test_boolean_inherit_true
    [:forward_arrow, :backwards_arrow].each {|s|
       style1 = Style.new(@doc)
      style1.send("#{s.to_s}=", true)
      style2 = Style.new(@doc, nil, style1)
      assert_equal true, style2.send(s), s.to_s + "did not inherit true."
    }
  end
  
  def test_boolean_inherit_false
    [:forward_arrow, :backwards_arrow].each {|s|
       style1 = Style.new(@doc)
      style1.send("#{s.to_s}=", false)
      style2 = Style.new(@doc, nil, style1)
      assert_equal false, style2.send(s), s.to_s + "did not inherit false."
    }
  end
  
  def test_boolean_inherit_nil
    [:forward_arrow, :backwards_arrow].each {|s|
       style1 = Style.new(@doc)
      style2 = Style.new(@doc, nil, style1)
      assert_nil style2.send(s), s.to_s + "did not inherit nil."
    }
  end
  
  def test_boolean_override
    [:forward_arrow, :backwards_arrow].each {|s|
      style1 = Style.new(@doc)
      style1.send("#{s.to_s}=", false)
      style2 = Style.new(@doc, nil, style1)
      assert_equal false, style1.send(s), "style1." + s.to_s + "was not false."
      assert_equal false, style2.send(s), "style2." + s.to_s + "did not inherit false."
      style2.send("#{s.to_s}=", true)
      assert_equal true, style2.send(s), "style2." + s.to_s + "was not true."
      assert_equal false, style1.send(s), "style1." + s.to_s + "was improperly overridden."
    }
  end
end