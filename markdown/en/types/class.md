# class

Return classname of object or creates a named object.

## 📝 Syntax

- name = class(var)
- obj = class(st, strname)

## 📥 Input argument

- var - a variable
- st - a struct
- strname - a string: classname desired

## 📤 Output argument

- name - a string
- obj - an object of type 'strname' based on struct 'st'

## 📄 Description

<b>name = class(var)</b> returns the class of var variable.

Standard classes are:

'cell'

'struct'

'single'

'double'

'logical'

'char'

'int8'

'int16'

'int32'

'int64'

'uint8'

'uint16'

'uint32'

'uint64'

'function_handle'

## 💡 Examples

```matlab
A = 3;
res = class(A)
```

```matlab
C = [1 ; 3];
res = class(C)
```

```matlab
addpath([nelsonroot(), '/modules/overload/examples/complex']);
c = complexObj(3,4);
class(c)
```

## 🔗 See also

[isa](../types/isa.md), [isdouble](../types/isdouble.md), [isfloat](../types/isfloat.md), [ischar](../types/ischar.md), [isstruct](../types/isstruct.md), [iscell](../types/iscell.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
