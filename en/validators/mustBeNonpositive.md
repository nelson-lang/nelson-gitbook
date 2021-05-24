

# mustBeNonpositive

Checks that value is non positive or raise an error.

## Syntax

- mustBeNonpositive(var)
- mustBeNonpositive(var, argPosition)
- C++: void mustBeNonpositive(const ArrayOfVector& args, int argPosition)

## Input argument

 - var - a variable: all supported types and classes that implement isnumeric, islogical, all, isreal, and le methods.
 - argPosition - a positive integer value: Position of input argument.

## Description


  <p><b>mustBeNonpositive</b> checks that value is non positive or raise an error.</p>


## Example

```matlab
mustBeNonpositive(-1)
mustBeNonpositive(1)
```

## See also

[mustBeNonnegative](mustBeNonnegative.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



