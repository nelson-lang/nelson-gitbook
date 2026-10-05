#import "nelson_help.typ": *

= setlanguage <localization:setlanguage>

Changes the language used in Nelson.

== Syntax

- #raw("setlanguage(language)");

== Input argument

/ language: a string: 'en\_US', 'fr\_FR' or others by default.

== Description

#strong[setlanguage]; changes the language used by Nelson and saves this changes for subsequent runs of Nelson.


== See also

#nlink(<localization:getlanguage>)[getlanguage];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
