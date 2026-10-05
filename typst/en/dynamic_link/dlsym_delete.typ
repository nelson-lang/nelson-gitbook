#import "nelson_help.typ": *

= dlsym\_delete <dynamic_link:dlsym_delete>

Removes dlsym object.

== Syntax

- #raw("dlsym_delete(h)");
- #raw("delete(h)");

== Input argument

/ h: a handle: an dlsym object.

== Description

#strong[delete(h)]; releases dlsym object.

 Do not forget to clear h afterward.


== Example

``````matlab
used = dlsym_used()
``````


== See also

#nlink(<dynamic_link:dlsym>)[dlsym];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
