#import "nelson_help.typ": *

= dlclose <dynamic_link:dlclose>

Removes dllib object.

== Syntax

- #raw("dllib_delete(h)");
- #raw("delete(h)");
- #raw("dlclose(h)");

== Input argument

/ h: a handle: an dllib object.

== Description

#strong[dlclose(h)]; or #strong[delete(h)]; releases dllib object.

 Do not forget to clear h afterward.


== Example

``````matlab
path_ref = modulepath('dynamic_link', 'builtin');
lib = dlopen(path_ref)
isvalid(lib)
dlclose(lib); // or delete(lib)
isvalid(lib)
``````


== See also

#nlink(<dynamic_link:dlopen>)[dlopen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
