#import "nelson_help.typ": *

= sscanf <stream_manager:sscanf>

Read formatted data from strings.

== Syntax

- #raw("R = sscanf(str, format)");
- #raw("R = sscanf(str, format, sizeR)");
- #raw("[R, count] = sscanf(...)");
- #raw("[R, count, errmsg] = sscanf(...)");
- #raw("[R, count, errmsg, nextindex] = sscanf(...)");

== Input argument

/ str: character array or string scalar.
/ format: a string describing the format to used function, see fscanf for supported format.
/ sizeR: desired dimensions of R.

== Output argument

/ R: matrix or character vector.
/ count: number of elements read into output array.
/ errmsg: Error message.
/ nextindex: Position after last character scanned.

== Description

Read formatted data from strings.


== Example

``````matlab
str = "2.7183  3.1416  0.0073";
R = sscanf(str,'%f',[2 2])
``````


== See also

#nlink(<stream_manager:fscanf>)[fscanf];, #nlink(<string:1_create_convert_text.sprintf>)[sprintf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
