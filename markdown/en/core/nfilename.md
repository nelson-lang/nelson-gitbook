# nfilename

Returns the name of the currently executing file.

## 📝 Syntax

- R = nfilename()
- R = nfilename('fullpath')
- R = nfilename('fullpathext')

## 📤 Output argument

- R - a string: the path of current function

## 📄 Description

<b>R = nfilename()</b> returns the name of the currently executing file.

<b>nfilename()</b> called from outside an nlf file returns an empty string.

With the input argument 'fullpathext', the string includes the directory part of the macro filename, and the filename extension.

With the input argument 'fullpath', the string includes the directory part of the macro filename, but not the extension.

<b>mfilename</b> is an alias on <b>nfilename</b> added for basic script compatibility.

## 🔗 See also

[nargin](../core/nargin.md), [nargout](../core/nargout.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
