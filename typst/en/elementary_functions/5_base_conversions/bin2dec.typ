#import "../nelson_help.typ": *

= bin2dec <elementary_functions:5_base_conversions.bin2dec>

Convert number in base 2 to decimal.

== Syntax

- #raw("D = bin2dec(TXT)");

== Input argument

/ TXT: a char array.

== Output argument

/ D: result of bin2dec: an integer value.

== Description

#strong[bin2dec]; converts number in base 2 to decimal.

 Note:

 - #strong[bin2dec]; and#strong[dec2bin]; are inverses of one another.


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
