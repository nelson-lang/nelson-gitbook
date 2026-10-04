# countcats

Count categorical elements by category.

## 📝 Syntax

- counts = countcats(A)
- counts = countcats(A, dim)

## 📥 Input argument

- A - Input categorical array.
- dim - Dimension along which counts are computed. Supported values are <b>1</b> and <b>2</b>.

## 📤 Output argument

- counts - Counts in category order. Undefined elements are not counted.

## 📄 Description

<b>countcats</b> counts how many elements belong to each category of <b>A</b>.

For matrices, <b>dim</b> controls whether categories are counted down columns or across rows.

## 💡 Examples

Count elements in each category.

```matlab
A = categorical({'red','blue','red',''}); counts = countcats(A)
```

Count by row.

```matlab
A = categorical({'red','blue'; 'red','red'}); counts = countcats(A, 2)
```

## 🔗 See also

[categories](../categorical/categories.md), [histcounts](../categorical/histcounts.md), [isundefined](../categorical/isundefined.md), [summary](../data_analysis/summary.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
