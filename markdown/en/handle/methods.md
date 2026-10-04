# methods

Returns public method names for an object or class.

## 📝 Syntax

- c = methods(h)
- c = methods(obj)
- c = methods(className)

## 📥 Input argument

- h - a handle object
- obj - a classdef object
- className - a class name as a string, including package-qualified names

## 📤 Output argument

- c - a cell of strings

## 📄 Description

<b>methods</b> returns a cell of strings with public method names.

For classdef classes, methods declared with private or protected access are hidden from this list. Static methods are listed and can be called with <b>ClassName.method</b>.

For classdef object arrays, <b>methods</b> returns the public methods of the array element class.

## 💡 Example

List public methods of a classdef object array.

```matlab
clear classes
d = [tempdir(), 'nelson_help_methods/'];
mkdir(d);
filewrite([d, '/NelsonHelpMethodsPoint.m'], ["classdef NelsonHelpMethodsPoint"; "  properties"; "    X = 0"; "  end"; "  methods"; "    function r = value(obj)"; "      r = obj.X;"; "    end"; "  end"; "end"]);
addpath(d);
a = NelsonHelpMethodsPoint();
b = NelsonHelpMethodsPoint();
m = methods([a, b])
```

## 🔗 See also

[isprop](../handle/isprop.md), [ismethod](../handle/ismethod.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description                      |
| ------- | ----------------------------------- |
| 1.0.0   | initial version                     |
| 2.0.0   | classdef class name support added   |
| 2.0.0   | classdef object array support added |

<!--
## 👤 Author

Allan CORNET
-->
