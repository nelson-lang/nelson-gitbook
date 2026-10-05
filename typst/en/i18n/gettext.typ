#import "nelson_help.typ": *

= gettext <i18n:gettext>

Get text translated into the current locale.

== Syntax

- #raw("translated_string = gettext(your_string)");
- #raw("translated_string = _(your_string))");

== Input argument

/ your\_string: a string: message to be translated.

== Output argument

/ translated\_string: a string: message translated.

== Description

#strong[translated\_string \= gettext(your\_string)]; gets the translation of a string#strong[your\_string]; to the current locale in the Nelson domain.

 #strong[\_(your\_string)]; is an alias of #strong[gettext(your\_string)];.


== Example

``````matlab
disp(_('function not found.'))
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
