

# mex

Build MEX function

## Syntax

- mex(filenames)
- mex('-output', mexName, filenames)

## Input argument

 - filenames - a string or cell of characters: list of files to use. First filename used as mex name.
 - mexName - a string: override naming convention.

## Description


  <p>Nelson includes an interface to allow legacy mex-files to be compiled and linked with Nelson.</p>
  <p>A mex file is a type of computer file that provides an interface between Octave, or reference commercial software and functions written in C, C++.</p>
  <p>Nelson have also his own C++ API to manage more easily internal nelson's objects.</p>


## Example

```matlab
edit([modulepath('mex'), '/tests/test_mexPrintf.nls'])
```

## See also

[dlgenerategateway](../dynamic_link/dlgenerategateway.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



