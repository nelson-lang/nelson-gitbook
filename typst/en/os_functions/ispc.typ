#import "nelson_help.typ": *

= ispc <os_functions:ispc>

Checks if version is for Windows platform.

== Syntax

- #raw("s = ispc()");

== Output argument

/ s: a logical: true if it is a Windows platform.

== Description

#strong[ispc]; checks if it is a Windows platform.


== Example

``````matlab
if ispc
  disp('Your platform is Windows')
else
  disp('Your platform is not Windows')
end
``````


== See also

#nlink(<os_functions:isunix>)[isunix];, #nlink(<os_functions:ismac>)[ismac];, #nlink(<os_functions:iswasm>)[iswasm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
