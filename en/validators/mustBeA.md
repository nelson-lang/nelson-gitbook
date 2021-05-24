

# mustBeA

Checks that input value comes from one of specified classes.

## Syntax

- mustBeA(var, classNames)
- mustBeA(var, classNames, argPosition)
- C++: void mustBeA(const ArrayOfVector& args, const wstringVector &classNames, int argPosition)

## Input argument

 - var - a variable.
 - classNames - a variable: name of data type or class.
 - argPosition - a positive integer value: Position of input argument.

## Description


  <p><b>mustBeA</b> checks that input value comes from one of specified classes.</p>


## Example

```matlab
mustBeA(1, 'double')
mustBeA([], ["double", "single"])
```

## See also

[mustBeNumeric](mustBeNumeric.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



