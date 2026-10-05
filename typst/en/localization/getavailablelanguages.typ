#import "nelson_help.typ": *

= getavailablelanguages <localization:getavailablelanguages>

Returns available languages in Nelson.

== Syntax

- #raw("ce = getavailablelanguages()");

== Output argument

/ ce: a cell of strings: supported languages.

== Description

#strong[getavailablelanguages]; returns the list of currently supported languages in Nelson.


== Example

``````matlab
getavailablelanguages()
``````


== See also

#nlink(<localization:setlanguage>)[setlanguage];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
