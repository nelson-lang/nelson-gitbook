#import "nelson_help.typ": *

= mustBeA <validators:mustBeA>

Checks that input value comes from one of specified classes.

== Syntax

- #raw("mustBeA(var, classNames)");
- #raw("mustBeA(var, classNames, argPosition)");
- #raw("C++: void mustBeA(const ArrayOfVector& args, const wstringVector &classNames, int argPosition)");

== Input argument

/ var: a variable.
/ classNames: a variable: name of data type or class.
/ argPosition: a positive integer value: Position of input argument.

== Description

#strong[mustBeA]; checks that input value comes from one of specified classes.

 A value passes when its class, one of its superclasses, or one of the categories #strong[numeric];, #strong[float]; and #strong[integer]; is listed in #strong[classNames]; (same rules as #strong[isa];).


== Example

``````matlab
mustBeA(1, 'double')
mustBeA([], ["double", "single"])
``````


== See also

#nlink(<validators:mustBeNumeric>)[mustBeNumeric];, #nlink(<types:isa>)[isa];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [superclasses and numeric, float, integer categories accepted.],
)

// Author: Allan CORNET
