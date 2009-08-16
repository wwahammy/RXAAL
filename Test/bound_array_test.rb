require "test/test_base"
class BoundArrayTest < TestBase
  include RXaal
  def test_gt_gt_accept_type
    array = BoundArray.new(Integer)
    array << 4
    assert_equal 1, array.length, "Array length isn't 1."
    assert_equal 4, array[0], "First element isn't 4."
  end
  
  def test_gt_gt_restrict
    array = BoundArray.new(Integer)
    array << "4"
    assert_equal 0, array.length, "Array length isn't 0."
  end
  
  def test_index_set_accept
    array = BoundArray.new(Integer)
    array << 5 << 3
    array[1] = 67
    assert_equal 67, array[1], "Array[1] isn't 67."
  end
  
   def test_index_set_restrict
    array = BoundArray.new(Integer)
    array << 5 << 3
    array[1] = "67"
    assert_equal 3, array[1], "Array[1] isn't 3."
  end
  
  def test_add_accept
    array = BoundArray.new(Integer)
    array << 5 << 3
    
    array2 = BoundArray.new(Integer)
    array2 << 7
    
    array = array + array2
    assert_equal 3, array.length, "Array length isn't 3"
  end
  
  def test_add_reject
    array = BoundArray.new(Integer)
    array << 5 << 3
    
    array2 = BoundArray.new(String)
    array2 << "home"
    
    array = array + array2
    array3 = ["str"]
    array = array + array3
    assert_equal 2, array.length, "Array length isn't 2"
  end
end