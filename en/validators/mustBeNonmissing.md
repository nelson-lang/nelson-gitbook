

# mustBeNonmissing

Checks that value is not missing.

## Syntax

- mustBeNonmissing(var)
- mustBeNonmissing(var, argPosition)
- C++: void mustBeNonmissing(const ArrayOfVector& args, int argPosition)

## Input argument

 - var - a variable: all supported types and classes that implement ismissing method.
 - argPosition - a positive integer value: Position of input argument.

## Description


  <p><b>mustBeNonmissing</b> checks that value is not missing or raise an error.</p>


## Example

```matlab
mustBeNonmissing(1)
mustBeNonmissing([])
mustBeNonmissing(["hello" string(NaN)])
```

## See also

[ismissing](ismissing.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



