

# mustBeFolder

Checks that input path refers to folder.

## Syntax

- mustBeFolder(var)
- mustBeFolder(var, argPosition)
- C++: void mustBeFolder(const ArrayOfVector& args, int argPosition)

## Input argument

 - var - a variable: a scalar string array or row vector characters array.
 - argPosition - a positive integer value: Position of input argument.

## Description


  <p><b>mustBeFolder</b> checks that input path refers to folder or raise an error.</p>


## Example

```matlab
mustBeFolder(tempdir())
mustBeFolder('hello_nelson')
```

## See also

[isdir](../files_folders_functions/isdir.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



