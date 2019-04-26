

# str2func

Returns a function handle from a string.

## Syntax

- func_handle = str2func(str)

## Input argument

 - str - a string

## Output argument

 - func_handle - a function handle.

## Description


  <p><b>function_handle = str2func(str)</b> returns a function handle <b>function_handle</b> for the function named in the string <b>str</b></p>


## Example

```matlab
fh = str2func('cos')
str = func2str(fh)
```

## See also

[func2str](func2str.md), [isfunction_handle](isfunction_handle.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



