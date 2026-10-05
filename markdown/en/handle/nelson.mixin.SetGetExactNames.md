# nelson.mixin.SetGetExactNames

Set and get property access with case-sensitive names.

## 📝 Syntax

- classdef MyClass < nelson.mixin.SetGetExactNames
- set(obj, name, value)
- value = get(obj, name)

## 📥 Input argument

- obj - a handle object of a class deriving from nelson.mixin.SetGetExactNames.
- name - a property name (char or string), or a cell array of names, spelled with the exact case.
- value - the value to assign.

## 📤 Output argument

- value - the property value.

## 📄 Description


Derive a handle class from <b>nelson.mixin.SetGetExactNames</b> to give it <b>set</b> and <b>get</b> methods for reading and writing properties by name. It behaves exactly like <b>nelson.mixin.SetGet</b>, from which it derives, except that property names are matched <b>case-sensitively</b>: a name that differs from the declared property only in case is rejected. 

<b>set(obj, name, value)</b> assigns a property; <b>set(obj, n1, v1, n2, v2, ...)</b> assigns several. <b>get(obj, name)</b> returns a property value; <b>get(obj)</b> returns a structure of all properties.

## 💡 Example

Case-sensitive name-based property access.

```matlab
classdef Widget < nelson.mixin.SetGetExactNames
  properties
    Width = 0
    Height = 0
  end
end
w = Widget();
set(w, 'Width', 100);
get(w, 'Width')     % returns 100
get(w, 'width')     % error: 'width' is not the declared name 'Width'
```


## 🔗 See also

[handle](../handle/handle.md), [nelson.mixin.SetGet](../handle/nelson.mixin.SetGet.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
