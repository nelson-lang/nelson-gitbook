# mustBeFloat

Checks that value is floating-point or raise an error.

## Syntax

- mustBeFloat(var)
- mustBeFloat(var, argPosition)
- C++: void mustBeFloat(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement isfloat method.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            <b>mustBeFloat</b> checks that value is floating-point (single or double) or raise an error.</p>

## Example

```matlab
mustBeFloat(true)
mustBeFloat([])
mustBeFloat(single([true false]))
```

## See also

[isfloat](../types/isfloat.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
