require "test/unit"
require "module"
class ModuleTest < Test::Unit::TestCase
  attr_accessor_bool(:home) {|n| n.class == String}
  
  attr_accessor_of_class(String, :foo, :bar, :baz)
    def test_attr_accessor_bool_home_exists
      assert_equal false, instance_variable_defined?(:@home)
    end
  
    def test_should_return_instance_variable_when_sent
      @home = 0
      assert_equal 0, home
    end
    
    def test_should_set_instance_variable_when
      self.home = 'home'
      assert_equal 'home', @home
    end

    def test_shouldnt_set_instance_variable_when_sent_odd
      self.home = 3
      assert_not_equal 3, home
  end
  
  def test_attr_accessor_of_class
    self.foo = "home"
    self.bar = :string
    self.baz = 0
    assert_equal 'home', foo
    assert_not_equal :string, bar
    assert_not_equal 0, baz
  end

end

