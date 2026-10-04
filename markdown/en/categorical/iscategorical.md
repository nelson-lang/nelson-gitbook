# iscategorical

Determine whether an array is categorical.

## 📝 Syntax

- tf = iscategorical(A)

## 📥 Input argument

- A - Input value.

## 📤 Output argument

- tf - Logical scalar that is <b>true</b> when <b>A</b> is a categorical array.

## 📄 Description

<b>iscategorical</b> checks the storage type of its input without modifying the input.

## 💡 Example

Test a categorical array.

```matlab
A = categorical({'red','blue'}); tf = iscategorical(A)
```

## 🔗 See also

[categorical](../categorical/categorical.md), [isordinal](../categorical/isordinal.md), [isprotected](../categorical/isprotected.md), [isundefined](../categorical/isundefined.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
