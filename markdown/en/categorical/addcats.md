# addcats

Add categories to a categorical array.

## 📝 Syntax

- B = addcats(A, names)
- B = addcats(A, names, 'Before', anchor)
- B = addcats(A, names, 'After', anchor)

## 📥 Input argument

- A - Input categorical array.
- names - Category name or names to add. Names already present in <b>A</b> are ignored.
- anchor - Existing category used as insertion point when <b>Before</b> or <b>After</b> is specified.

## 📤 Output argument

- B - Categorical array with the same values as <b>A</b> and an updated category list.

## 📄 Description


<b>addcats</b> appends categories to a categorical array without changing the stored elements. 

For ordinal categorical arrays, the insertion position must be explicit because category order defines comparisons.

## 💡 Examples

Add a category at the end of the list.

```matlab
A = categorical({'red','blue'}); B = addcats(A, 'green'); categories(B)
```
Insert a category before an existing category.

```matlab
A = categorical({'low','high'}, {'low','high'}, 'Ordinal', true); B = addcats(A, 'mid', 'Before', 'high'); categories(B)
```


## 🔗 See also

[categorical](../categorical/categorical.md), [categories](../categorical/categories.md), [removecats](../categorical/removecats.md), [mergecats](../categorical/mergecats.md), [reordercats](../categorical/reordercats.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
