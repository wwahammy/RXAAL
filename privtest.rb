require "rxaal"
include RXaal
doc = XaalDoc.new

inits = doc.initials

pl = Polyline.new(doc)
doc.initials << pl

pl.coordinates << Coordinate.new(doc, 0, 0) << Coordinate.new(doc, 50, 50)
pl.style = Style.new(doc)

pl.style.color = NamedColor.new(Enum::ColorName::RED)
pl.hidden = true
seq1 = Seq.new(doc)
doc.seqs << seq1
par1 = Par.new(doc)
seq1.pars << par1
par1.show << pl
par1.show.type = "selected"
doc.xaal_serialize