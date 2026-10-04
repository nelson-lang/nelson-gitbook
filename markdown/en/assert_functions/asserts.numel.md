# asserts.numel

Check the number of elements of a value.

## 📝 Syntax

- asserts.numel(value, n)
- [res, msg] = asserts.numel(value, n)

## 📥 Input argument

- value - value to test.
- n - expected number of elements.

## 📤 Output argument

- res - true if the value has n elements.
- msg - the assertion failure message.

## 📄 Description

<b>asserts.numel</b> checks the number of elements.

## Used function(s)

numel

## 💡 Example

Check element count:

```matlab
asserts.numel(ones(2, 3), 6);
```

## 🔗 See also

[asserts.size](../assert_functions/asserts.size.md), [asserts.sameSize](../assert_functions/asserts.sameSize.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
