# mustBeGreaterThan

Checks that value is greater than another value or issue error.

## Syntax

- mustBeGreaterThan(var, c)
- mustBeGreaterThan(var, c, argPosition)
- C++: void mustBeGreaterThan(const ArrayOfVector& args, const ArrayOf &c, int argPosition)

## Input argument

- var - a variable: logical or numeric array.
- c - a variable: scalar numeric value.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            <b>mustBeGreaterThan</b> checks that value is greater than another value or issue error.</p>

## Example

```matlab
mustBeGreaterThan(1, 0)
mustBeGreaterThan([2 3 4],2)
```

## See also

[mustBeNumeric](../validators/mustBeNumeric.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
