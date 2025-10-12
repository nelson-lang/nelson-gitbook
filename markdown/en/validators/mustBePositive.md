# mustBePositive

Checks that value is positive or raise an error.

## Syntax

- mustBePositive(var)
- mustBePositive(var, argPosition)
- C++: void mustBePositive(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, and gt methods.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            mustBePositive checks that value is positive or raise an error.</p>

## Example

```matlab
mustBePositive(1)
mustBePositive(-1)
```

## See also

[mustBeNonnegative](../validators/mustBeNonnegative.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
