#import "nelson_help.typ": *

= validatestring <validators:validatestring>

Checks that text matches one allowed value.

== Syntax

- #raw("matched = validatestring(str, validStrings)");
- #raw("matched = validatestring(str, validStrings, argIndex)");
- #raw("matched = validatestring(str, validStrings, funcName)");
- #raw("matched = validatestring(str, validStrings, funcName, varName)");
- #raw("matched = validatestring(str, validStrings, funcName, varName, argIndex)");

== Input argument

/ str: text to validate, specified as a character vector or string scalar.
/ validStrings: allowed text values, specified as a character vector, string array, or cell array of character vectors.
/ argIndex: positive integer used in generated error messages to identify the argument position.
/ funcName: function name used in generated error identifiers.
/ varName: variable name used in generated error messages.

== Output argument

/ matched: matched value from #strong[validStrings];. The output is a string scalar when #strong[validStrings]; is a string array; otherwise it is a character vector.

== Description

#strong[validatestring]; accepts exact matches and leading partial matches without case sensitivity. Exact matches are preferred over partial matches.

 If one leading partial match exists, that value is returned. If several leading partial matches exist and every matching value forms a substring chain, the shortest matching value is returned. If several leading partial matches exist and they do not form such a chain, an ambiguity error is raised.

 Error messages can include an argument position, a variable name, and a function name depending on the syntax used.


== Examples

Case-insensitive exact and partial matches.

``````matlab
shape = validatestring('Rect', {'square', 'rectangle', 'triangle'});
direction = validatestring("LEFT", ["left", "right"])
``````

Shortest match in a chain of partial matches.

``````matlab
value = validatestring('rig', {'righteously', 'right', 'righteous'})
``````

Use context arguments for generated errors.

``````matlab
units = {'cm', 'm', 'in', 'ft'};
choice = validatestring('CM', units, 'findArea', 'units', 4)
``````


== See also

#nlink(<validators:validateattributes>)[validateattributes];, #nlink(<validators:inputParser>)[inputParser];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
