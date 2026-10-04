# isNull

Determine whether a library pointer is null.

## 📝 Syntax

- tf = isNull(ptr)

## 📥 Input argument

- ptr - libpointer handle or object that implements null-pointer testing.

## 📤 Output argument

- tf - logical value: true when the pointer address is null.

## 📄 Description

isNull returns a logical value indicating whether a dynamic-link pointer object represents a null address.

The function is intended for pointer objects returned by the dynamic link module.

## Used function(s)

    libpointer

## 💡 Example

Create a null pointer and test it.

```matlab
p = libpointer();
tf = isNull(p)
```

## 🔗 See also

[libpointer](../dynamic_link/libpointer.md), [dlopen](../dynamic_link/dlopen.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
