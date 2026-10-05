#import "nelson_help.typ": *

= poheader <i18n:poheader>

Generates po file header.

== Syntax

- #raw("ce = poheader(domain, language)");

== Input argument

/ domain: a string: domain message.
/ language: a string: language, examples 'en\_US' or 'fr\_FR'.

== Output argument

/ ce: a cell of string: po file header.

== Description

#strong[ce \= poheader(domain, language)]; generates po file header.


== Example

``````matlab
poheader('nelson', 'en_US')
``````


== See also

#nlink(<localization:setlanguage>)[setlanguage];, #nlink(<localization:getlanguage>)[getlanguage];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
