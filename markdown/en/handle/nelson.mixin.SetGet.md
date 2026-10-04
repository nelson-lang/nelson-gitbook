# nelson.mixin.SetGet

Add set and get property access to a handle class.

## 📝 Syntax

- classdef MyClass < nelson.mixin.SetGet
- set(obj, name, value)
- value = get(obj, name)

## 📥 Input argument

- obj - a handle object of a class deriving from nelson.mixin.SetGet.
- name - a property name (char or string), or a cell array of names.
- value - the value to assign.

## 📤 Output argument

- value - the property value.

## 📄 Description

Derive a handle class from <b>nelson.mixin.SetGet</b> to give it <b>set</b> and <b>get</b>methods for reading and writing properties by name.

<b>set(obj, name, value)</b> assigns a property; <b>set(obj, n1, v1, n2, v2, ...)</b> assigns several. <b>get(obj, name)</b> returns a property value; <b>get(obj)</b> returns a structure of all properties. Property names are matched case-insensitively.

## 💡 Example

Name-based property access.

```matlab
classdef Widget < nelson.mixin.SetGet
  properties
    Width = 0
    Height = 0
  end
end
w = Widget();
set(w, 'Width', 100, 'Height', 40);
get(w, 'Width')
```

## 🔗 See also

[handle](../handle/handle.md), [nelson.mixin.SetGetExactNames](../handle/nelson.mixin.SetGetExactNames.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
