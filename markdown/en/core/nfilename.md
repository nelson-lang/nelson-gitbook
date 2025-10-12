# nfilename

Returns the name of the currently executing file.

## Syntax

- R = nfilename()
- R = nfilename('fullpath')
- R = nfilename('fullpathext')

## Output argument

- R - a string: the path of current function

## Description

<p>
            R = nfilename() returns the name of the currently executing file.</p>

<p>
                nfilename() called from outside an nlf file returns an empty string.</p>

<p>With the input argument 'fullpathext', the string includes the directory part of the macro filename, and the filename extension.</p>

<p>With the input argument 'fullpath', the string includes the directory part of the macro filename, but not the extension.</p>

<p>
                    mfilename is an alias on nfilename added for basic script compatibility.</p>

## See also

[nargin](../core/nargin.md), [nargout](../core/nargout.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
