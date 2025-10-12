# isa

Return true if var is an object from the class str.

## Syntax

- res = isa(var, str)

## Input argument

- var - a variable
- str - a string: classname expected

## Output argument

- res - a logical: true or false

## Description

<p>
            isa returns a logical 1 if the argument is a cell array and a logical 0 otherwise.</p>

<p>str can also be 'numeric', 'float', or 'integer':</p>

<p>numeric: floating point or integer array: double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64</p>

<p>float: single or double precision floating-point array: double, single</p>

<p>integer: unsigned or signed integer array: int8, uint8, int16, uint16, int32, uint32, int64, uint64</p>

<p>If var is a handle object, str can be 'handle' or type name of the handle.</p>

## Examples

```matlab
A = 3;
res = isa(A, 'double')
```

```matlab
B = {'NelSon', 3, true};
res = isa(B, 'cell')
```

```matlab
B = {'NelSon', 3, true};
res = isa(B, 'cell')
```

## See also

[class](../types/class.md), [isinteger](../integer/isinteger.md), [isnumeric](../types/isnumeric.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
