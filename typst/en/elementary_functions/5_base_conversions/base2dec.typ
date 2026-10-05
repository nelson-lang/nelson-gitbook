#import "../nelson_help.typ": *

= base2dec <elementary_functions:5_base_conversions.base2dec>

Convert number in a base to decimal.

== Syntax

- #raw("D = base2dec(TXT, B)");

== Input argument

/ TXT: a char array.
/ B: an integer value: \[2, 36\].

== Output argument

/ D: result of base2dec: an integer value.

== Description

#strong[base2dec]; converts number in a base to decimal.

 Note:

 - #strong[dec2base]; and#strong[base2dec]; are inverses of one another.

 - values are cached to speed up next computation#strong[base2dec(' ', 2) to clear cache.];


== Example

``````matlab
base2dec('313', 3)
``````


== See also

#nlink(<elementary_functions:5_base_conversions.dec2base>)[dec2base];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
