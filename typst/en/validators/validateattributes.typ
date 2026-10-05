#import "nelson_help.typ": *

= validateattributes <validators:validateattributes>

Checks that an array has requested classes and attributes.

== Syntax

- #raw("validateattributes(A, classes, attributes)");
- #raw("validateattributes(A, classes, attributes, argIndex)");
- #raw("validateattributes(A, classes, attributes, funcName)");
- #raw("validateattributes(A, classes, attributes, funcName, varName)");
- #raw("validateattributes(A, classes, attributes, funcName, varName, argIndex)");

== Input argument

/ A: array or object to validate.
/ classes: accepted class names, specified as a character vector, string array, or cell array of character vectors.
/ attributes: required attributes, specified as a cell array or string array. Attributes that require a value must be followed immediately by that value.
/ argIndex: positive integer used in generated error messages to identify the argument position.
/ funcName: function name used in generated error identifiers.
/ varName: variable name used in generated error messages.

== Description

#strong[validateattributes]; raises an error if #strong[A]; does not belong to at least one requested class or does not satisfy all requested attributes. The function returns no output when validation succeeds.

 #strong[classes]; accepts concrete class names and custom class names tested with #strong[isa];. The aliases #strong[numeric];, #strong[integer];, and #strong[float]; are also supported. #strong[numeric]; accepts numeric arrays, #strong[integer]; accepts integer storage classes, and #strong[float]; accepts double or single arrays.

 Supported shape attributes are #strong[2d];, #strong[3d];, #strong[column];, #strong[row];, #strong[scalar];, #strong[scalartext];, #strong[vector];, #strong[square];, #strong[diag];, #strong[nonempty];, and #strong[nonsparse];.

 Supported valued size attributes are #strong[size];, #strong[numel];, #strong[ncols];, #strong[nrows];, and #strong[ndims];. For #strong[size];, use #strong[NaN]; in an expected dimension to skip that dimension.

 Supported value attributes are #strong[finite];, #strong[nonnan];, #strong[binary];, #strong[even];, #strong[odd];, #strong[integer];, #strong[real];, #strong[nonnegative];, #strong[nonpositive];, #strong[negative];, #strong[nonzero];, and #strong[positive];.

 Supported range attributes are #strong[\>];, #strong[\>\=];, #strong[\<];, and #strong[\<\=];. The comparison value must follow the attribute name.

 Supported monotonicity attributes are #strong[decreasing];, #strong[increasing];, #strong[nondecreasing];, and #strong[nonincreasing];. Monotonicity is checked down each column.


== Examples

Validate class, shape, and value attributes.

``````matlab
validateattributes([1 2 3], {'numeric'}, {'row', 'vector', 'positive'})
``````

Validate a partially specified size.

``````matlab
A = ones(2, 3, 4);
validateattributes(A, {'numeric'}, {'3d', 'size', [2 NaN 4], 'ndims', 3})
``````

Validate column-wise monotonicity.

``````matlab
A = [1 4; 2 4; 3 5];
validateattributes(A, {'numeric'}, {'nondecreasing'})
``````

Use validation inside an input parser.

``````matlab
p = inputParser();
addRequired(p, 'name', @(x) validateattributes(x, {'char'}, {'nonempty'}));
addOptional(p, 'id', 1, @(x) validateattributes(x, {'numeric'}, {'scalar', 'positive'}));
parse(p, 'item', 3);
p.Results
``````


== See also

#nlink(<validators:validatestring>)[validatestring];, #nlink(<validators:inputParser>)[inputParser];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
