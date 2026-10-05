# histcounts

Count categorical values for histogram-style summaries.

## 📝 Syntax

- counts = histcounts(A)

## 📥 Input argument

- A - Input categorical array.

## 📤 Output argument

- counts - Counts for each category in category order.

## 📄 Description


<b>histcounts</b> returns category counts for a categorical array. 

The result is equivalent to <b>countcats(A)</b>; undefined elements are ignored.

## 💡 Example

Count values for each category.

```matlab
A = categorical({'red','blue','red'}); counts = histcounts(A)
```


## 🔗 See also

[countcats](../categorical/countcats.md), [categories](../categorical/categories.md), [isundefined](../categorical/isundefined.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
