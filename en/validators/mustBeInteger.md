

# mustBeInteger

Checks that value is integer or raise an error.

## Syntax

- mustBeInteger(var)
- mustBeInteger(var, argPosition)
- C++: void mustBeInteger(const ArrayOfVector& args, int argPosition)

## Input argument

 - var - a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, eq and floor methods.
 - argPosition - a positive integer value: Position of input argument.

## Description


  <p><b>mustBeInteger</b> checks that value is integer or raise an error.</p>


## Example

```matlab
mustBeInteger(-1)
mustBeInteger(Inf)
```

## See also

[mustBeNumeric](mustBeNumeric.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



