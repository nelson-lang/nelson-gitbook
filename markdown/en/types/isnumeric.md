# isnumeric

Return true if variable var is a numeric array.

## 📝 Syntax

- res = isnumeric(var)

## 📥 Input argument

- var - a variable

## 📤 Output argument

- res - a logical: true or false

## 📄 Description

<b>isnumeric</b> returns a logical 1 if the argument is a numeric array and a logical 0 otherwise.

List of numeric types:

<b>single</b> : single precision

<b>double</b> : double precision

<b>int8</b> : 8 bit signed integer

<b>int16</b> : 16 bit signed integer

<b>int32</b> : 32 bit signed integer

<b>int64</b> : 64 bit signed integer

<b>uint8</b> : 8 bit unsigned integer

<b>uint16</b> : 16 bit unsigned integer

<b>uint32</b> : 32 bit unsigned integer

<b>uint64</b> : 64 bit unsigned integer

## 💡 Examples

```matlab
A = 1;
res = isnumeric(A)
```

```matlab
B = single(1+i);
res = isnumeric(B)
```

```matlab
C = logical(1);
res = isnumeric(C)
```

## 🔗 See also

[islogical](../types/islogical.md), [isinteger](../types/isinteger.md), [isdouble](../types/isdouble.md), [issingle](../types/issingle.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
