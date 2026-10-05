#import "nelson_help.typ": *

= ismac <os_functions:ismac>

Checks if version is for MacOS platform.

== Syntax

- #raw("s = ismac()");

== Output argument

/ s: a logical: true if it is a MacOS platform.

== Description

#strong[ismac]; checks if it is a MacOs platform.


== Example

``````matlab
if ismac
  disp('Your platform is MacOs')
else
  disp('Your platform is not MacOs')
end
``````


== See also

#nlink(<os_functions:isunix>)[isunix];, #nlink(<os_functions:ispc>)[ispc];, #nlink(<os_functions:iswasm>)[iswasm];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
