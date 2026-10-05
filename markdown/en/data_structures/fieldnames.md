# fieldnames

Return structure field names or public classdef property names.

## 📝 Syntax

- names = fieldnames(st)
- names = fieldnames(obj)
- names = fieldnames(objArray)

## 📥 Input argument

- st - a structure
- obj - a classdef object or handle object
- objArray - a classdef object array or handle array

## 📤 Output argument

- names - a cell of strings

## 📄 Description


<b>fieldnames(st)</b> returns a cell of strings with the field names of the input structure. 

For classdef objects, <b>fieldnames(obj)</b> returns the same public property names as <b>properties(obj)</b>. 

For classdef object arrays, the returned names are the public properties of the array element class.

## 💡 Example

List public property names of a classdef object array.

```matlab
clear classes
d = [tempdir(), 'nelson_help_fieldnames/'];
mkdir(d);
filewrite([d, '/NelsonHelpFieldPoint.m'], ["classdef NelsonHelpFieldPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpFieldPoint();
b = NelsonHelpFieldPoint();
names = fieldnames([a, b])
```


## 🔗 See also

[getfield](../data_structures/getfield.md), [properties](../handle/properties.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | classdef object support added |

<!--
## 👤 Author

Allan CORNET
-->
