#import "nelson_help.typ": *

= pyargs <python_engine:pyargs>

Change default environment of Python interpreter.

== Syntax

- #raw("pyargs");
- #raw("pa = pyargs(Name, Value)");

== Input argument

/ Name: a string, or row characters array
/ Value: variable value

== Output argument

/ pa: pyargs object.

== Description

#strong[pyargs(Name, Value, ...)]; generates one or multiple keyword arguments for Python functions.

 In Python, a keyword argument is a value associated with an identifier.

 Ensure to position#strong[pyargs]; as the last input argument when calling a Python function.


== Example

``````matlab
pa = pyargs('A', 1)
``````


== See also

#nlink(<python_engine:pyrun>)[pyrun];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [initial version],
)

// Author: Allan CORNET
