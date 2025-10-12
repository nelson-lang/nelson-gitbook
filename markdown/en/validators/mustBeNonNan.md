# mustBeNonNan

Checks that value is not NaN.

## Syntax

- mustBeNonNan(var)
- mustBeNonNan(var, argPosition)
- C++: void mustBeNonNan(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement isnan methods.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            mustBeNonNan checks that value is not NaN or raise an error.</p>

## Example

```matlab
mustBeNonNan(1)
mustBeNonNan([])
mustBeNonNan(NaN)

```

## See also

[isempty](../types/isempty.md), [isnan](../elementary_functions/isnan.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
