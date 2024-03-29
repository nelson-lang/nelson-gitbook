# mexext

Binary MEX file-name extension

## Syntax

- ext = mexext()
- extlist = mexext('all')

## Description

  <p><b>ext = mexext()</b> returns the filename extension for the current platform.</p>
  <p><b>extlist = mexext('all')</b> returns the extensions for all platforms.</p>
  <p>A mex file is a type of computer file that provides an interface between Octave or the reference commercial software and functions written in C, C++.</p>
  <p>Nelson have also his own C++ API to manage more easily internal nelson's objects.</p>
  <p/>
  <p>Nelson cannot load mex generated by others software, <b>BUT</b> you can easily rebuild it for each software target.</p>
  <p>Mex generated by Nelson have a file extension beginning by <b>.nex</b></p>

## Example

```matlab
ext = mexext()
extlist = mexext('all')
```

## See also

[mex](mex.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
