#import "../../src/lib.typ" : atom-shells, get-element
//#import "@preview/typsium:0.2.0" : get-element
#set page(width: auto, height: auto, margin: 0.5em)

#let lithium = get-element(symbol:"Li")
#atom-shells(element:lithium)
