# isa

Return true if a variable has the requested class or type.

## 📝 Syntax

- res = isa(var, className)

## 📥 Input argument

- var - a variable
- className - a class or type name as a string

## 📤 Output argument

- res - a logical: true or false

## 📄 Description


<b>isa</b> returns logical 1 when <b>var</b> is an instance of <b>className</b>, and logical 0 otherwise. 

<b>className</b> can be a Nelson type name such as <b>double</b>, <b>cell</b>, <b>numeric</b>, <b>float</b>, or <b>integer</b>. 

For classdef objects, <b>isa</b> accepts the class name and supported superclass names, including <b>handle</b> for handle classes. 

For sparse arrays, <b>isa</b> tests the stored value class, such as <b>double</b> or <b>logical</b>. Use <b>issparse</b> to test sparse storage.

## 💡 Examples

Test a numeric type.

```matlab
A = 3;
res = isa(A, 'double')
```
Test the stored value class of a sparse array.

```matlab
S = sparse([2 0 3]);
isDouble = isa(S, 'double')
isSparse = issparse(S)
```
Test a classdef handle object.

```matlab
clear classes
d = [tempdir(), 'nelson_help_isa/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsaCounter.m'], ["classdef NelsonHelpIsaCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
obj = NelsonHelpIsaCounter();
isCounter = isa(obj, 'NelsonHelpIsaCounter')
isHandle = isa(obj, 'handle')
delete(obj)
```


## 🔗 See also

[class](../types/class.md), [issparse](../types/issparse.md), [isobject](../types/isobject.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | classdef object support documented |
| 2.0.0   | sparse arrays are tested by stored value class |

<!--
## 👤 Author

Allan CORNET
-->
