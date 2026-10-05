#import "nelson_help.typ": *

= getdefaultlanguage <localization:getdefaultlanguage>

Returns the default language used in Nelson.

== Syntax

- #raw("lang = getdefaultlanguage()");

== Output argument

/ lang: a string: 'en\_US' by default.

== Description

#strong[getdefaultlanguage]; returns the default language used by Nelson.


== Example

``````matlab
getdefaultlanguage()
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
