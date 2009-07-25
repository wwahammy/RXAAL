require "xaal_element"
class Style < XaalElement
  attr_accessor :uses
  
  def initialize (uses_style = nil)
    @uses = uses_style
    super
  end
  
  def forward_arrow
    if @forward_arrow != nil
      return @forward_arrow
    else
      if self.uses != nil
        return self.uses.forward_arrow
      else
        return nil
      end
    end
  end
  
  def forward_arrow=(new_value)
    @forward_arrow = new_value
  end
  
  def backwards_arrow
    if @backwards_arrow != nil
      return @backwards_arrow
    else
      if self.uses != nil
        return self.uses.backwards_arrow
      else
        return nil
      end
    end
  end
  
  def backwards_arrow=(new_value)
    @backwards_arrow = new_value
  end
  
  def color()
    if @color != nil
      return @color
    else
      if self.uses != nil
        return self.uses.color
      else
        return nil
      end
    end
  end
  
  def color=(new_value)
    @color = new_value
  end
  
  def fill_color
    if @fill_color != nil
      return @fill_color
    else
      if self.uses != nil
        return self.uses.fill_color
      else
        return nil
      end
    end
  end
  
  def fill_color=(new_value)
    @fill_color = new_value
  end
  
  def stroke_type
    if @stroke_type != nil
      return @stroke_type
    else
      if self.uses != nil
        return self.uses.stroke_type
      else
        return nil
      end
    end
  end
  
  def stroke_type=(new_value)
    @stroke_type = new_value
  end
  
  
  def stroke_width
    if @stroke_width != nil
      return @stroke_width
    else
      if self.uses != nil
        return self.uses.stroke_width
      else
        return nil
      end
    end
  end
  
  def stroke_width=(new_value)
    @stroke_width = new_value
  end
  
 def font
    if @font != nil
      return @font
    else
      if self.uses != nil
        return self.uses.font
      else
        return nil
      end
    end
  end
 
 def font=(new_value)
    @font = new_value
  end
end