#import "../../nelson_help.typ": *

= close <graphics:2_graphics_objects.1_object_management.close>

Close one or more figures

== Syntax

- #raw("close()");
- #raw("close('all')");
- #raw("close(name)");
- #raw("close(ID)");
- #raw("close(GO)");
- #raw("tf = close(...)");

== Input argument

/ ID: a scalar integer value: figure ID.
/ GO: a scalar graphics object on an existing figure.
/ GO: a scalar graphics object on an existing figure.

== Output argument

/ tf: a scalar logical: true if figure was closed.

== Description

#strong[close]; closes the current figure.

 #strong[close(ID)]; closes the figure specified by figure ID.

 #strong[close(GO)]; closes the figure specified by figure graphics object.

 #strong[close('all')]; closes all figures.


== Example

``````matlab
f = figure(1)
close();
h = figure(3)
close(h)
f1 = figure()
f2 = figure()
close('all')
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
