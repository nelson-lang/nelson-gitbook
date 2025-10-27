# isuint32

Return true if variable var is an unsigned 32-bit integer type array.

## 📝 Syntax

- res = isuint32(var)

## 📥 Input argument

- var - a variable

## 📤 Output argument

- res - a logical: true or false

## 📄 Description

<b>isuint32</b> returns a logical <b>1</b> if the argument is an <b>unsigned 32-bit</b> integer array and a logical <b>0</b> otherwise.

## 💡 Examples

```matlab
A = 3;
res = isuint32(A)
```

```matlab
B = uint32(3);
res = isuint32(B)
```

## 🔗 See also

[isa](../types/isa.md), [uint32](../integer/uint32.md), [isinteger](../types/isinteger.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
