# reordercats

Reorder categories in a categorical array.

## 📝 Syntax

- B = reordercats(A)
- B = reordercats(A, newOrder)

## 📥 Input argument

- A - Input categorical array.
- newOrder - New category order, specified by category names or numeric positions.

## 📤 Output argument

- B - Categorical array with the same displayed values as <b>A</b> and a reordered category list.

## 📄 Description


<b>reordercats</b> changes the order of categories. If <b>newOrder</b> is omitted, categories are sorted by name. 

For ordinal arrays, the new category order changes relational comparisons and sorting order.

## 💡 Examples

Specify a new order.

```matlab
A = categorical({'red','blue'}, {'red','blue'}); B = reordercats(A, {'blue','red'}); categories(B)
```
Sort categories by name.

```matlab
A = categorical({'plane','car','train'}); B = reordercats(A); categories(B)
```


## 🔗 See also

[categories](../categorical/categories.md), [renamecats](../categorical/renamecats.md), [isordinal](../categorical/isordinal.md), [sort](../data_analysis/sort.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
