# isordinal

Determine whether a categorical array is ordinal.

## 📝 Syntax

- tf = isordinal(A)

## 📥 Input argument

- A - Input value.

## 📤 Output argument

- tf - Logical scalar that is <b>true</b> for ordinal categorical arrays.

## 📄 Description

<b>isordinal</b> returns <b>true</b> when <b>A</b> is categorical and category order is meaningful.

Ordinal arrays support relational comparisons based on category order.

## 💡 Example

Create an ordinal array and test it.

```matlab
A = categorical({'low','high'}, {'low','high'}, 'Ordinal', true); tf = isordinal(A)
```

## 🔗 See also

[categorical](../categorical/categorical.md), [isprotected](../categorical/isprotected.md), [reordercats](../categorical/reordercats.md), [categories](../categorical/categories.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
