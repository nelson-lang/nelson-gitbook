#import "../nelson_help.typ": *

= caxis <graphics:3_labels_styling.caxis>

Query or set axes color limits.

== Syntax

- #raw("limits = caxis()");
- #raw("caxis([cmin cmax])");
- #raw("mode = caxis('mode')");
- #raw("caxis('auto')");
- #raw("caxis('manual')");

== Input argument

/ limits: Two-element increasing numeric vector.

== Output argument

/ limits: Current color limits.

== Description

#strong[caxis]; is a compatibility interface for axes color limits.


== Example

``````matlab
imagesc([1 2; 3 4]); caxis([0 5]); limits = caxis()
``````


== See also

#nlink(<graphics:3_labels_styling.2_color_styling.clim>)[clim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
