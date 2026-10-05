#import "../nelson_help.typ": *

= hex2dec <elementary_functions:5_base_conversions.hex2dec>

Convert number in base 16 to decimal.

== Syntax

- #raw("D = hex2dec(TXT)");

== Input argument

/ TXT: a char array.

== Output argument

/ D: result of hex2dec: an integer value.

== Description

#strong[hex2dec]; converts number in base 16 to decimal.

 Note:

 - #strong[hex2dec]; and#strong[dec2hex]; are inverses of one another.


== Example

``````matlab
bin2dec('11')
``````


== See also

#nlink(<elementary_functions:5_base_conversions.dec2bin>)[dec2bin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
