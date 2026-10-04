# class

Return a variable class name or create an old-style named object.

## 📝 Syntax

- name = class(var)
- obj = class(st, className)

## 📥 Input argument

- var - a variable
- st - a structure
- className - a class name as a string

## 📤 Output argument

- name - a string
- obj - an old-style object of type <b>className</b> based on structure <b>st</b>

## 📄 Description

<b>class(var)</b> returns the class name of <b>var</b>.

For sparse arrays, <b>class</b> returns the stored value class, such as <b>double</b> or <b>logical</b>. Use <b>issparse</b> to test sparse storage.

For classdef value and handle objects, <b>class</b> returns the classdef class name, including package qualification when applicable.

<b>class(st, className)</b> preserves Nelson old-style object creation and is independent from classdef class definitions.

## 💡 Examples

Return a built-in class name.

```matlab
A = 3;
name = class(A)
```

Return the stored value class of a sparse array.

```matlab
S = sparse([2 0 3]);
name = class(S)
tf = issparse(S)
```

Return classdef value and handle class names.

```matlab
clear classes
d = [tempdir(), 'nelson_help_class/'];
mkdir(d);
filewrite([d, '/NelsonHelpClassPoint.m'], ["classdef NelsonHelpClassPoint"; "  properties"; "    X = 0"; "  end"; "end"]);
filewrite([d, '/NelsonHelpClassCounter.m'], ["classdef NelsonHelpClassCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
p = NelsonHelpClassPoint();
h = NelsonHelpClassCounter();
pointClass = class(p)
handleClass = class(h)
delete(h)
```

## 🔗 See also

[isa](../types/isa.md), [issparse](../types/issparse.md), [isobject](../types/isobject.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description                                       |
| ------- | ---------------------------------------------------- |
| 1.0.0   | initial version                                      |
| 2.0.0   | classdef value and handle object behavior documented |
| 2.0.0   | sparse arrays report their stored value class        |

<!--
## 👤 Author

Allan CORNET
-->
