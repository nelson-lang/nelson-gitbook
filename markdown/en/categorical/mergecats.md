# mergecats

Merge categories in a categorical array.

## 📝 Syntax

- B = mergecats(A, oldCategories)
- B = mergecats(A, oldCategories, newCategory)

## 📥 Input argument

- A - Input categorical array.
- oldCategories - Categories whose elements are merged.
- newCategory - Name of the merged category. If omitted, the first category in <b>oldCategories</b> is kept.

## 📤 Output argument

- B - Categorical array with merged category codes.

## 📄 Description


<b>mergecats</b> replaces multiple categories by a single category and remaps all matching elements. 

Categories not listed in <b>oldCategories</b> keep their values and relative order.

## 💡 Example

Merge several categories into one category.

```matlab
A = categorical({'red','blue','green'}); B = mergecats(A, {'blue','green'}, 'other'); categories(B)
```


## 🔗 See also

[addcats](../categorical/addcats.md), [removecats](../categorical/removecats.md), [renamecats](../categorical/renamecats.md), [setcats](../categorical/setcats.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
