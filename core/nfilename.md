


nfilename


nfilename

Returns the name of the currently executing file.

## Syntax

- R = nfilename()
- R = nfilename('fullpath')
- R = nfilename('fullpathext')

## Output argument

 - R - a string: the path of current function

## Description


  <p><b>R = nfilename()</b> returns the name of the currently executing file.</p>
  <p><b>nfilename()</b> called from outside an nlf file returns an empty string.</p>
  <p>With the input argument 'fullpathext', the string includes the directory part of the macro filename, and the filename extension.</p>
  <p>With the input argument 'fullpath', the string includes the directory part of the macro filename, but not the extension.</p>


## See also

nargin.md nargin, nargout.md nargout.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



