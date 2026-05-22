# intmin

Return the smallest integer that can be represented in an integer type.

## 📝 Syntax

- imin = intmin()
- imin = intmin(classname)

## 📥 Input argument

- classname - a string: by default: int32

## 📤 Output argument

- imin - smallest integer

## 📄 Description

<b>imin = intmin(classname)</b> the smallest integer that can be represented in an integer type.

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
A = intmin('int64')
res = class(A)
```

```matlab
A = intmin('uint32')
res = class(C)
```

## 🔗 See also

[intmax](../integer/intmax.md), [class](../types/class.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
