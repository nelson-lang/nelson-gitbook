

# mustBeFile

Checks that input path refers to file.

## Syntax

- mustBeFile(var)
- mustBeFile(var, argPosition)
- C++: void mustBeFile(const ArrayOfVector& args, int argPosition)

## Input argument

 - var - a variable: a scalar string array or row vector characters array.
 - argPosition - a positive integer value: Position of input argument.

## Description


  <p><b>mustBeFile</b> checks that input path refers to file or raise an error.</p>


## Example

```matlab
mustBeFile(tempdir())
 mustBeFile([nelsonroot(), '/etc/startup.m'])
```

## See also

[isfile](../files_folders_functions/isfile.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



