# mustBeReal

Checks that value is real.

## Syntax

- mustBeReal(var)
- mustBeReal(var, argPosition)
- C++: void mustBeReal(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement isreal method.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            mustBeReal checks that value is real or raise an error.</p>

## Example

```matlab
mustBeReal(1)
mustBeReal(i)

```

## See also

[isreal](../types/isreal.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
