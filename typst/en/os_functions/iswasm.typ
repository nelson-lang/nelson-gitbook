#import "nelson_help.typ": *

= iswasm <os_functions:iswasm>

Checks if version is for WebAssembly platform.

== Syntax

- #raw("s = iswasm()");

== Output argument

/ s: a logical: true if it is a WebAssembly platform.

== Description

#strong[iswasm]; checks if it is a WebAssembly platform.

 It returns #strong[true]; when Nelson runs from a WebAssembly build (in a browser or a WebAssembly runtime), and #strong[false]; otherwise.


== Example

``````matlab
if iswasm
  disp('Your platform is WebAssembly')
else
  disp('Your platform is not WebAssembly')
end
``````


== See also

#nlink(<os_functions:ispc>)[ispc];, #nlink(<os_functions:isunix>)[isunix];, #nlink(<os_functions:ismac>)[ismac];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
