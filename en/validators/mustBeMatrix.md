# mustBeMatrix

Checks that value is a matrix or raise an error.

## Syntax

- mustBeMatrix(var)
- mustBeMatrix(var, argPosition)
- C++: void mustBeMatrix(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement ismatrix method.
- argPosition - a positive integer value: Position of input argument.

## Description

  <p><b>mustBeMatrix</b> checks that value is a matrix or raise an error.</p>

## Example

```matlab
mustBeMatrix(true)
mustBeMatrix([])
mustBeMatrix(ones(3, 2, 4))
```

## See also

[ismatrix](ismatrix.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
