

# mustBeLogicalScalar

Checks that value is logical scalar or raise an error.

## Syntax

- mustBeLogicalScalar(var)
- mustBeLogicalScalar(var, argPosition)
- C++: void mustBeLogicalScalar(const ArrayOfVector& args, int argPosition)

## Input argument

 - var - a variable: all supported types and classes that implement islogical, isscalar methods.
 - argPosition - a positive integer value: Position of input argument.

## Description


  <p><b>mustBeLogicalScalar</b> checks that value is logical scalar or raise an error.</p>


## Example

```matlab
mustBeLogicalScalar(true)
mustBeLogicalScalar([])
mustBeLogicalScalar([true false])
```

## See also

[isscalar](isscalar.html), [islogical](../types/islogical.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



