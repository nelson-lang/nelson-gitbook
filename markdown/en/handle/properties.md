# properties

Returns public property names for an object or class.

## 📝 Syntax

- properties(h)
- c = properties(h)
- c = properties(obj)
- c = properties(className)

## 📥 Input argument

- h - a handle object
- obj - a classdef object
- className - a class name as a string, including package-qualified names

## 📤 Output argument

- c - a cell of strings

## 📄 Description

<b>properties</b> returns a cell of strings with public property names.

For classdef classes, private, protected, and access-list-restricted properties are hidden from this list. Constant properties can be accessed as <b>ClassName.PropertyName</b>.

For classdef object arrays, <b>properties</b> returns the public properties of the array element class.

Dependent properties and automatic observable property events are parsed as attributes, but compatible get/set dispatch and automatic property notifications are still limited.

## 💡 Example

List public properties of a classdef object array.

```matlab
clear classes
d = [tempdir(), 'nelson_help_properties/'];
mkdir(d);
filewrite([d, '/NelsonHelpPropertiesPoint.m'], ["classdef NelsonHelpPropertiesPoint"; "  properties"; "    X = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpPropertiesPoint();
b = NelsonHelpPropertiesPoint();
p = properties([a, b])
```

## 🔗 See also

[isprop](../handle/isprop.md), [classdef](../interpreter/classdef.md).

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
