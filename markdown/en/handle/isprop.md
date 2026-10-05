# isprop

Return true if a property belongs to an object or class.

## 📝 Syntax

- res = isprop(h, propertyname)
- res = isprop(obj, propertyname)
- res = isprop(objArray, propertyname)
- res = isprop(className, propertyname)

## 📥 Input argument

- h - a handle object
- obj - a classdef object
- className - a class name as a string
- propertyname - a string

## 📤 Output argument

- res - a logical scalar, or a logical array with the same size as the object array

## 📄 Description


<b>isprop</b> returns logical 1 if the property is defined for the object or class and logical 0 otherwise. 

For classdef object arrays, the result has the same size as the object array. 

For classdef classes, <b>isprop</b> can report private and protected properties as existing. Use <b>properties</b> to list public properties.

## 💡 Example

Test properties on a classdef handle array.

```matlab
clear classes
d = [tempdir(), 'nelson_help_isprop/'];
mkdir(d);
filewrite([d, '/NelsonHelpIsPropCounter.m'], ["classdef NelsonHelpIsPropCounter < handle"; "  properties"; "    Count = 0"; "  end"; "  properties (Access = private)"; "    Secret = 1"; "  end"; "end"]);
addpath(d);
a = NelsonHelpIsPropCounter();
b = NelsonHelpIsPropCounter();
tf = isprop([a, b], 'Count')
tfPrivate = isprop([a, b], 'Secret')
publicNames = properties([a, b])
delete([a, b])
```


## 🔗 See also

[ismethod](../handle/ismethod.md), [properties](../handle/properties.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | classdef class name support added |
| 2.0.0   | classdef object array support added |

<!--
## 👤 Author

Allan CORNET
-->
