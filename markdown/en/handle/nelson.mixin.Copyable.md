# nelson.mixin.Copyable

Add a copy method to a handle class.

## 📝 Syntax

- classdef MyClass < nelson.mixin.Copyable
- b = copy(a)

## 📥 Input argument

- a - a handle object of a class deriving from nelson.mixin.Copyable.

## 📤 Output argument

- b - an independent shallow copy of a.

## 📄 Description

Derive a handle class from <b>nelson.mixin.Copyable</b> to give it a <b>copy</b> method that returns an independent shallow copy of an object.

<b>copy(a)</b> creates a new object and copies each property value from <b>a</b>. Properties declared <b>NonCopyable</b> are not copied and keep their default value in the copy. The copy is shallow: handle-valued properties are shared between the original and the copy.

<b>nelson.mixin.Copyable</b> is itself a handle class.

## 💡 Example

A copyable handle class.

```matlab
classdef Node < nelson.mixin.Copyable
  properties
    Value = 0
  end
end
a = Node();
a.Value = 42;
b = copy(a);
b.Value = 7;
a.Value   % still 42
```

## 🔗 See also

[handle](../handle/handle.md), [classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
