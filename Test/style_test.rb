require "test/unit"
require "style"
require "xaal_element"
class StyleTest < Test::Unit::TestCase
  @clazz = Style
  def test_initialize
    flunk "Not yet implemented"
  end
  
  def test_uses
    flunk "Not yet implemented"
  end
  
  def test_uses=
    flunk "Not yet implemented"
  end
  
  def test_forward_arrow
    flunk "Not yet implemented"
  end
  
  def test_forward_arrow=
    flunk "Not yet implemented"
  end
  
  def test_backwards_arrow
    flunk "Not yet implemented"
  end
  
  def test_backwards_arrow=
    flunk "Not yet implemented"
  end
  
  def test_color
    flunk "Not yet implemented"
  end
  
  def test_color=
    flunk "Not yet implemented"
  end
  
  def test_fill_color
    flunk "Not yet implemented"
  end
  
  def test_fill_color=
    flunk "Not yet implemented"
  end
  
  def test_stroke_type
    flunk "Not yet implemented"
  end
  
  def test_stroke_type=
    flunk "Not yet implemented"
  end
  
  def test_stroke_width
    flunk "Not yet implemented"
  end
  
  def test_stroke_width=
    flunk "Not yet implemented"
  end
  
  def test_font
    flunk "Not yet implemented"
  end
  
  def test_font=
    flunk "Not yet implemented"
  end
  
  def test_serialize_overridden
    style = Style.new
    begin
      style.xaal_serialize("nil")
    rescue NotImplementedError
      flunk "serialize not overridden"
    end
  end
end