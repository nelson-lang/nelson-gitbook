# validateattributes

Checks that an array has requested classes and attributes.

## 📝 Syntax

- validateattributes(A, classes, attributes)
- validateattributes(A, classes, attributes, argIndex)
- validateattributes(A, classes, attributes, funcName)
- validateattributes(A, classes, attributes, funcName, varName)
- validateattributes(A, classes, attributes, funcName, varName, argIndex)

## 📥 Input argument

- A - array or object to validate.
- classes - accepted class names, specified as a character vector, string array, or cell array of character vectors.
- attributes - required attributes, specified as a cell array or string array. Attributes that require a value must be followed immediately by that value.
- argIndex - positive integer used in generated error messages to identify the argument position.
- funcName - function name used in generated error identifiers.
- varName - variable name used in generated error messages.

## 📄 Description


<b>validateattributes</b> raises an error if <b>A</b> does not belong to at least one requested class or does not satisfy all requested attributes. The function returns no output when validation succeeds. 

<b>classes</b> accepts concrete class names and custom class names tested with <b>isa</b>. The aliases <b>numeric</b>, <b>integer</b>, and <b>float</b> are also supported. <b>numeric</b> accepts numeric arrays, <b>integer</b> accepts integer storage classes, and <b>float</b> accepts double or single arrays. 

Supported shape attributes are <b>2d</b>, <b>3d</b>, <b>column</b>, <b>row</b>, <b>scalar</b>, <b>scalartext</b>, <b>vector</b>, <b>square</b>, <b>diag</b>, <b>nonempty</b>, and <b>nonsparse</b>. 

Supported valued size attributes are <b>size</b>, <b>numel</b>, <b>ncols</b>, <b>nrows</b>, and <b>ndims</b>. For <b>size</b>, use <b>NaN</b> in an expected dimension to skip that dimension. 

Supported value attributes are <b>finite</b>, <b>nonnan</b>, <b>binary</b>, <b>even</b>, <b>odd</b>, <b>integer</b>, <b>real</b>, <b>nonnegative</b>, <b>nonpositive</b>, <b>negative</b>, <b>nonzero</b>, and <b>positive</b>. 

Supported range attributes are <b>></b>, <b>>=</b>, <b><</b>, and <b><=</b>. The comparison value must follow the attribute name. 

Supported monotonicity attributes are <b>decreasing</b>, <b>increasing</b>, <b>nondecreasing</b>, and <b>nonincreasing</b>. Monotonicity is checked down each column.

## 💡 Examples

Validate class, shape, and value attributes.

```matlab
validateattributes([1 2 3], {'numeric'}, {'row', 'vector', 'positive'})
```
Validate a partially specified size.

```matlab
A = ones(2, 3, 4);
validateattributes(A, {'numeric'}, {'3d', 'size', [2 NaN 4], 'ndims', 3})
```
Validate column-wise monotonicity.

```matlab
A = [1 4; 2 4; 3 5];
validateattributes(A, {'numeric'}, {'nondecreasing'})
```
Use validation inside an input parser.

```matlab
p = inputParser();
addRequired(p, 'name', @(x) validateattributes(x, {'char'}, {'nonempty'}));
addOptional(p, 'id', 1, @(x) validateattributes(x, {'numeric'}, {'scalar', 'positive'}));
parse(p, 'item', 3);
p.Results
```


## 🔗 See also

[validatestring](../validators/validatestring.md), [inputParser](../validators/inputParser.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
