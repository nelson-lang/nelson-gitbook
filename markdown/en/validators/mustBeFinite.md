# mustBeFinite

Checks that value is finite or raise an error.

## Syntax

- mustBeFinite(var)
- mustBeFinite(var, argPosition)
- C++: void mustBeFinite(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement isfinite methods.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            mustBeFinite checks that value is finite or raise an error.</p>

<p>Empty values are ignored.</p>

## Example

```matlab
mustBeFinite(1)
mustBeFinite(Inf)
```

## See also

[isfinite](../elementary_functions/isfinite.md), [isempty](../types/isempty.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
