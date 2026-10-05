# nelson.mixin.Scalar

Restrict a class to scalar instances.

## 📝 Syntax

- classdef MyClass < nelson.mixin.Scalar

## 📥 Input argument

- obj - an object of a class deriving from nelson.mixin.Scalar.

## 📤 Output argument

- obj - a scalar object instance.

## 📄 Description


Derive from <b>nelson.mixin.Scalar</b> to declare that a class can only have scalar instances. Concatenating instances of the class into a non-scalar array, with <b>[a b]</b>or <b>[a; b]</b>, raises an error with identifier <b>Nelson:class:concatenationScalar</b>. 

Use this mixin for objects that represent a single entity and for which an array of objects has no meaning.

## 💡 Example

A scalar-only class.

```matlab
classdef Config < nelson.mixin.Scalar
  properties
    Name = ''
  end
end
% a = [Config(), Config()]   % errors: objects can only be scalar
```


## 🔗 See also

[classdef](../interpreter/classdef.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
