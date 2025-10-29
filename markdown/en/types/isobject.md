# isobject

Return true if variable var is an object.

## 📝 Syntax

- res = isobject(var)

## 📥 Input argument

- var - a variable

## 📤 Output argument

- res - a logical: true or false

## 📄 Description

<b>ishandle</b> returns a logical 1 if the argument is an object and a logical 0 otherwise.

## 💡 Example

```matlab
A = 3;
res = isobject(A)

addpath([modulepath('overload', 'root'), '/examples/complex']);
A = complexObj(1, 2);
res = isobject(A)

```

## 🔗 See also

[isa](../types/isa.md), [ishandle](../types/ishandle.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
