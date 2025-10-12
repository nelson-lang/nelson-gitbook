# mustBeScalarOrEmpty

Checks that value is scalar or empty or raise an error.

## Syntax

- mustBeScalarOrEmpty(var)
- mustBeScalarOrEmpty(var, argPosition)
- C++: void mustBeScalarOrEmpty(const ArrayOfVector& args, int argPosition)

## Input argument

- var - a variable: all supported types and classes that implement isscalar and isempty methods.
- argPosition - a positive integer value: Position of input argument.

## Description

<p>
            mustBeScalarOrEmpty checks that value is scalar or empty or raise an error.</p>

## Example

```matlab
mustBeScalarOrEmpty(true)
mustBeScalarOrEmpty([])
mustBeScalarOrEmpty([true false])

```

## See also

[isempty](../elementary_functions/isempty.md), [islogical](../types/islogical.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
