# mustBeUnderlyingType

Validate that value has a specified underlying type.

## 📝 Syntax

- mustBeUnderlyingType(A, typename)

## 📥 Input argument

- A - value to validate.
- typename - text scalar naming the required underlying type.

## 📤 Output argument

- none - this validation function returns no value.

## 📄 Description


<b>mustBeUnderlyingType</b> throws an error if the underlying type of A (as returned by underlyingType) is not equal to typename. This function does not return a value.

## 💡 Example



```matlab
mustBeUnderlyingType(int32(5), 'int32')
```


## 🔗 See also

[mustBeA](../validators/mustBeA.md), [underlyingType](../types/underlyingType.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
