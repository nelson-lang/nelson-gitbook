#import "nelson_help.typ": *

= feature <core:feature>

undocumented features.

== Syntax

- #raw("ret = feature(name)");
- #raw("ret = feature(name, newValue)");

== Input argument

/ name: a string: name of the feature.
/ newValue: a variable

== Output argument

/ ret: result: result returned

== Description

#strong[feature]; is an entirely undocumented and unsupported Nelson function.

 It is a helper function for debugging Nelson.

 #strong[feature]; can change without prior notice between Nelson releases, so be very careful when using this function in your code.


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.2.0], [initial version],
)

// Author: Allan CORNET
