module RXaal
  require "core_ext/module"
  require "core_ext/string"
  require "core_ext/object"
  autoload :XaalNS, "xaalns"
  smrt_autoload :Angle, :Arc, :Arrow, :Attribute
  smrt_autoload :Center, :CircleSegment, :Circle, :Coordinate 
  smrt_autoload :Ellipse, :Enum
  smrt_autoload :Font
  smrt_autoload :GenericColor, :GraphicPrim
  smrt_autoload :Line 
  smrt_autoload :Metadata, :MetadataMod
  smrt_autoload :NamedColor, :NodePrim, :NSContainer
  smrt_autoload :Offset, :Operation
  smrt_autoload :Point, :Polygon, :Polyline
  smrt_autoload :RXaalError, :RXaalObject, :Radius, :Rectangle, :RGBColor
  smrt_autoload :Serializable, :Shape, :Square, :Stroke, :StyleContainer, :StyleMod, :Style
  smrt_autoload :Text, :TopLevelElem, :Triangle
  smrt_autoload :XaalDoc, :XaalElement
end
