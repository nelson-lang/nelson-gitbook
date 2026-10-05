# isobject

Return true if a variable is an object.

## 📝 Syntax

- res = isobject(var)

## 📥 Input argument

- var - a variable

## 📤 Output argument

- res - a logical: true or false

## 📄 Description


<b>isobject</b> returns logical 1 if <b>var</b> is a Nelson object and logical 0 otherwise. 

Classdef value objects and classdef handle objects are reported as objects.

## 💡 Example

Test classdef value and handle objects.

```matlab
clear classes
d = [tempdir(), 'nelson_help_isobject/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsObjectPoint.m'], ["classdef NelsonHelpIsObjectPoint"; "  properties"; "    X = 0"; "  end"; "end"]);
filewrite([d, '/NelsonHelpIsObjectCounter.m'], ["classdef NelsonHelpIsObjectCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
p = NelsonHelpIsObjectPoint();
h = NelsonHelpIsObjectCounter();
isPointObject = isobject(p)
isHandleObject = isobject(h)
delete(h)
```


## 🔗 See also

[isa](../types/isa.md), [ishandle](../types/ishandle.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | classdef value and handle object support documented |

<!--
## 👤 Author

Allan CORNET
-->
