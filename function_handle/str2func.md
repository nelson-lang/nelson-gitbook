



func2str


func2str

Returns a string from function handle.

## Syntax

- str = func2str(func_handle)

## Input argument

 - func_handle - a function handle.

## Output argument

 - str - a string

## Description


  <p><b>str = func2str(function_handle)</b> returns a string <b>str</b> that holds the name of the function to which the function handle is associated.</p>


## Example

```Nelson
fh = str2func('cos')
str = func2str(fh)
```

## See also

str2func.md str2func, isfunction_handle.md isfunction_handle.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



