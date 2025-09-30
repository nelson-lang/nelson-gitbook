# mustBeColumn

Checks that value is a column vector or raise an error.

## Syntax

- mustBeColumn(var)
- mustBeColumn(var, argPosition)
- C++: void mustBeColumn(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement iscolumn method.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            <b>mustBeColumn</b> checks that value is a column vector or raise an error.</p>

## Example

```matlab
mustBeColumn(true)
mustBeColumn([])
mustBeColumn(ones(3, 2, 4))
```

## See also

[iscolumn](../types/iscolumn.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
