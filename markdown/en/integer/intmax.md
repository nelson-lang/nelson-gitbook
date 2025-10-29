# intmax

Return the largest integer that can be represented in an integer type.

## 📝 Syntax

- imax = intmax()
- imax = intmax(classname)

## 📥 Input argument

- classname - a string: by default: int32

## 📤 Output argument

- imax - largest integer

## 📄 Description

<b>imax = intmax(classname)</b> the largest integer that can be represented in an integer type.

Supported values for the string <b>classname</b> are:

'int8'

'uint8'

'int16'

'uint16'

'int32'

'uint32'

'int64'

'uint64'

## 💡 Examples

```matlab
A = intmax('int64')
res = class(A)
```

```matlab
A = intmax('uint32')
res = class(C)
```

## 🔗 See also

[intmin](../integer/intmin.md), [class](../type/class.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
