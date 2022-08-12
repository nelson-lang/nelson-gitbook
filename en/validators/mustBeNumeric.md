# mustBeNumeric

Checks that value is numeric or raise an error.

## Syntax

- mustBeNumeric(var)
- mustBeNumeric(var, argPosition)
- C++: void mustBeNumeric(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement isnumeric method.
- argPosition - a positive integer value: Position of input argument.

## Description

  <p><b>mustBeNumeric</b> checks that value is numeric or raise an error.</p>
  <p>Empty values are ignored.</p>

## Example

```matlab
mustBeNumeric(1)
mustBeNumeric([])
mustBeNumeric({1})
```

## See also

[isnumeric](../types/isnumeric.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
