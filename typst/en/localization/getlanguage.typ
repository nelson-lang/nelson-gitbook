#import "nelson_help.typ": *

= getlanguage <localization:getlanguage>

Returns the current language in Nelson.

== Syntax

- #raw("lang = getlanguage()");

== Output argument

/ lang: a string: current language used in Nelson.

== Description

#strong[getlanguage]; returns the current language used in Nelson.


== Example

``````matlab
l = getlanguage()
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
