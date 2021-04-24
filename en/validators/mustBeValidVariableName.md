

# mustBeValidVariableName

Checks that value is valid variable name or raise an error.

## Syntax

- mustBeValidVariableName(var)
- mustBeValidVariableName(var, argPosition)
- C++: void mustBeValidVariableName(const ArrayOfVector& args, int argPosition)

## Input argument

 - var - a variable: string or characters array.
 - argPosition - a positive integer value: Position of input argument.

## Description


  <p><b>mustBeValidVariableName</b> checks that value is valid variable name or raise an error.</p>


## Example

```matlab
mustBeValidVariableName('8t')
mustBeValidVariableName('t8')
mustBeValidVariableName("t8")
```

## See also

[isvarname](../types/isvarname.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



