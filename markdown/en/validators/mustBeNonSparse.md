# mustBeNonSparse

Checks that value is not sparse.

## Syntax

- mustBeNonSparse(var)
- mustBeNonSparse(var, argPosition)
- C++: void mustBeNonSparse(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement issparse method.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            <b>mustBeNonSparse</b> checks that value is not sparse or raise an error.</p>

## Example

```matlab
mustBeNonSparse(1)
mustBeNonSparse([])
mustBeNonSparse(sparse(3))

```

## See also

[issparse](../types/issparse.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
