# handle

Base class for objects with reference semantics.

## 📝 Syntax

- classdef MyClass < handle

## 📥 Input argument

- none - handle is used as a superclass, not called directly.

## 📤 Output argument

- none - handle is used as a superclass, not called directly.

## 📄 Description

<b>handle</b> is the abstract base class from which every handle class derives. A class declared as <b>classdef MyClass < handle</b> has reference semantics: variables that hold the object are references to a single underlying instance rather than independent copies.

Assigning a handle object to another variable, or passing it to a function, copies the reference, not the data. All references then observe the same property values, and a change made through one reference is visible through every other reference to the same object.

This differs from a value class (the default when no superclass is specified), where each assignment produces an independent copy.

Deriving from <b>handle</b> also provides the common handle services: lifetime management with <b>delete</b> and <b>isvalid</b>, equality and relational comparison of references, and the reflection, event, listener and dynamic-property mechanisms exposed by the related handle subclasses.

To obtain an independent copy of a handle object, derive the class from <b>nelson.mixin.Copyable</b> and use its <b>copy</b> method.

## 💡 Example

Reference semantics of a handle class.

```matlab
d = [tempdir(), 'nelson_help_handle/'];
mkdir(d);
filewrite([d, '/NelsonHelpHandleCounter.m'], ["classdef NelsonHelpHandleCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpHandleCounter();
b = a;         % b references the same object as a
b.Count = 5;
a.Count        % 5: a and b share the same instance
isvalid(a)     % true
delete(a);
isvalid(b)     % false: the shared object has been deleted
```

## 🔗 See also

[classdef](../interpreter/classdef.md), [nelson.mixin.Copyable](../handle/nelson.mixin.Copyable.md), [isvalid](../handle/isvalid.md), [delete](../handle/delete.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
