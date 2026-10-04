# isvalid

Return true for valid handles.

## 📝 Syntax

- res = isvalid(h)

## 📥 Input argument

- h - a handle object or handle array

## 📤 Output argument

- res - a logical scalar or logical array with the same size as h

## 📄 Description

<b>isvalid</b> returns true for valid handles and false for handles invalidated by delete.

Clearing one variable does not invalidate other aliases to the same handle object.

For handle arrays, the result has the same size as the input array.

## 💡 Example

Check a classdef handle array.

```matlab
d = [tempdir(), 'nelson_help_isvalid/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsValidCounter.m'], ["classdef NelsonHelpIsValidCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
h(3) = NelsonHelpIsValidCounter();
isvalid(h)
delete(h(2));
isvalid(h)
```

## 🔗 See also

[isa](../types/isa.md).

## 🕔 History

| Version | 📄 Description                 |
| ------- | ------------------------------ |
| 1.0.0   | initial version                |
| 2.0.0   | handle array result documented |

<!--
## 👤 Author

Allan CORNET
-->
