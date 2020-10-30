

# mex

Build MEX function

## Syntax

- mex(filenames)
- mex(filenames, option1, ..., optionN)
- mex(api, filenames)
- mex(api, filenames, option1, ..., optionN)
- mex('-output', mexName, filenames)
- mex(api, '-output', mexName, filenames)
- mex(api, '-output', mexName, filenames, option1, ..., optionN)
- mex('-client, 'engine', filenames)
- mex('-client', 'engine', 'filenames', api, option1, ..., optionN)

## Input argument

 - '-client', 'engine' - enable to build C/C++ source files into standalone engine application.
 - api - a string: '-R2017b' (separated complex representation) or '-R2018a' (interleaved complex representation).
 - filenames - a string or cell of characters: list of files to use. First filename used as mex name.
 - mexName - a string: override naming convention.
 - option1, ..., optionN - string: compilation or link option.

## Description


  <p>Nelson includes an interface to allow legacy mex-files to be compiled and linked with Nelson.</p>
  <p>A mex file is a type of computer file that provides an interface between Octave or the reference commercial software and functions written in C, C++.</p>
  <p>Nelson have also his own C++ API to manage more easily internal nelson's objects.</p>
  <p/>
  <p>PREDEFINED C MACRO:</p>
  <p><b>MX_IS_NELSON</b> macro is defined to easily detect if Nelson is used in C code.</p>
  <p><b>MX_HAS_INTERLEAVED_COMPLEX</b> macro is defined if C MEX API used is '-R2018a'.</p>
  <p/>
  <p>Supported options: compilation or link.</p>
  <p>
    <b>CFLAGS=</b>
  </p>
  <p><b>-D</b> The -D option defines C preprocessor macro.</p>
  <p><b>-U</b> The -U option undefines C preprocessor macro</p>
  <p><b>-I</b> Adds pathname to the list of folders to search for #include files.</p>
  <p><b>-l</b> Links with dynamic object library .lib, .so or .dylib.</p>
  <p><b>-g</b> Used for debugging (Debug configuration).</p>


## Example

```matlab
edit([modulepath('mex'), '/tests/test_engine.nls'])
```

## See also

[dlgenerategateway](../dynamic_link/dlgenerategateway.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



