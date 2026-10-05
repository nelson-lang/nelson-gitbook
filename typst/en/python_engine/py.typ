#import "nelson_help.typ": *

= py <python_engine:py>

Python namespace proxy.

== Syntax

- #raw("p = py()");
- #raw("p.module.function(...)");

== Output argument

/ p: Python namespace proxy object.
/ pyValue: Python object returned by the called function.

== Description

py returns a proxy object used to access Python builtins and modules from Nelson.

 Use attribute access on the returned object to import modules or call Python functions.


== Used function(s)

pyenv

== Example

Call a Python built-in through the namespace proxy.

``````matlab
p = py();
pyValue = p.int(42)
``````


== See also

#nlink(<python_engine:pyenv>)[pyenv];, #nlink(<python_engine:pyrun>)[pyrun];, #nlink(<python_engine:pyrunfile>)[pyrunfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
