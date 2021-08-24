

# inmem

Names of functions, MEX-files.

## Syntax

- F = inmem()
- [F, M] = inmem()
- F = inmem('-completenames')
- [F, M] = inmem('-completenames')

## Input argument

 - '-completenames' - a string: mex function name.

## Output argument

 - F - cell array of character vectors containing the names of the macros that are loaded.
 - M - cell array of character vectors containing the names of the mex that are loaded.

## Description


  <p><b>inmem</b> returns cells array of names of functions and mex currently loaded.</p>


## Example

```matlab
clear all
tand(3)
inmem()
inmem('-completenames')
```

## See also

[clear](../memory_manager/clear.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



