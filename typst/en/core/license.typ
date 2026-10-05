#import "nelson_help.typ": *

= license <core:license>

Get license information for Nelson.

== Syntax

- #raw("license");
- #raw("r = license");
- #raw("[r, txt] = license");

== Output argument

/ r: a string: minimal string description about license
/ txt: a string: complete license text.

== Description

#strong[license]; get license information for Nelson.


== Example

``````matlab
license()
r = license()
[r,txt] = license()
``````


== See also

#nlink(<core:banner>)[banner];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
