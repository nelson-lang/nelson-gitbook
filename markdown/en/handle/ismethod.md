# ismethod

Return true if a public method belongs to an object or class.

## 📝 Syntax

- res = ismethod(h, methodname)
- res = ismethod(obj, methodname)
- res = ismethod(className, methodname)

## 📥 Input argument

- h - a handle object
- obj - a classdef object
- className - a class name as a string
- methodname - a string

## 📤 Output argument

- res - a logical: true or false

## 📄 Description


<b>ismethod</b> returns a logical 1 if the method is a public method of the object or class and a logical 0 otherwise. 

For classdef classes, private and protected methods are not reported as public methods.

## 💡 Example

Test for a public method.

```matlab
d = [tempdir(), 'nelson_help_ismethod/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsMethodPoint.m'], ["classdef NelsonHelpIsMethodPoint"; "  methods"; "    function r = value(obj)"; "      r = 1;"; "    end"; "  end"; "end"]);
addpath(d);
tf = ismethod('NelsonHelpIsMethodPoint', 'value')
```


## 🔗 See also

[isprop](../handle/isprop.md), [methods](../handle/methods.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | classdef class name support added |

<!--
## 👤 Author

Allan CORNET
-->
