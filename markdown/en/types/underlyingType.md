# underlyingType

Underlying type of an array.

## 📝 Syntax

- t = underlyingType(X)

## 📥 Input argument

- X - input array.

## 📤 Output argument

- t - name of the underlying class of X, as a character vector.

## 📄 Description


<b>underlyingType</b> returns the name of the underlying class of X. For ordinary arrays this is the same as class(X); for an enumeration built on a fundamental type it returns that fundamental type.

## 💡 Example



```matlab
underlyingType(int32(5))
```


## 🔗 See also

[isa](../types/isa.md), [mustBeUnderlyingType](../validators/mustBeUnderlyingType.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
