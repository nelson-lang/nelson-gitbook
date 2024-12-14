# mustBeRow

Checks that value is a row vector or raise an error.

## Syntax

- mustBeRow(var)
- mustBeRow(var, argPosition)
- C++: void mustBeRow(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement isrow method.
- argPosition - a positive integer value: Position of input argument.

## Description

  <p><b>mustBeRow</b> checks that value is a row vector or raise an error.</p>

## Example

```matlab
mustBeRow([1, 1])
mustBeRow([])
mustBeRow([1; 1])
```

## See also

[isrow](isrow.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
