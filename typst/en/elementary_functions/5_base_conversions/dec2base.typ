#import "../nelson_help.typ": *

= dec2base <elementary_functions:5_base_conversions.dec2base>

Convert decimal number to another base.

== Syntax

- #raw("R = dec2base(D, B)");
- #raw("R = dec2base(D, B, N)");

== Input argument

/ D: a nonnegative integer smaller than the value returned by flintmax.
/ B: an integer value \[2, 36\].
/ N: an integer value. number of digits.

== Output argument

/ R: result of dec2base: char array.

== Description

#strong[dec2base]; converts decimal number to another base.

 values are cached to speed up next computation#strong[dec2base(\[\], 2)]; to clear cache.


== Example

``````matlab
X = [65535 128; 1 0]
Y = dec2base(X, 2)
Y = dec2base(X, 2, 26)

``````


== See also

#nlink(<elementary_functions:5_base_conversions.base2dec>)[base2dec];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
