#import "nelson_help.typ": *

= isunix <os_functions:isunix>

Checks if version is for GNU Linux or Unix platform.

== Syntax

- #raw("s = isunix()");

== Output argument

/ s: a logical: true if it is a GNU Linux or Unix platform.

== Description

#strong[isunix]; checks if it is a GNU Linux or Unix platform.

 MacOs platform is also detected as a GNU Linux or Unix platform.


== Example

``````matlab
if isunix
  disp('Your platform is Unix or Linux')
else
  disp('Your platform is Unix or Linux')
end
``````


== See also

#nlink(<os_functions:ispc>)[ispc];, #nlink(<os_functions:ismac>)[ismac];, #nlink(<os_functions:iswasm>)[iswasm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
