# categories

List categories of a categorical array.

## 📝 Syntax

- names = categories(A)
- names = categories(A, 'OutputType', type)

## 📥 Input argument

- A - Input categorical array.
- type - Output representation: <b>'char'</b>, <b>'string'</b>, or <b>'categorical'</b>.

## 📤 Output argument

- names - Category names in category order.

## 📄 Description

<b>categories</b> returns the category list attached to a categorical array. Undefined elements are not categories.

The default output is a cell array of character vectors.

## 💡 Examples

Return the category names.

```matlab
A = categorical({'red','blue','red'}); names = categories(A)
```

Return the category names as strings.

```matlab
A = categorical({'small','large'}); names = categories(A, 'OutputType', 'string')
```

## 🔗 See also

[categorical](../categorical/categorical.md), [addcats](../categorical/addcats.md), [renamecats](../categorical/renamecats.md), [reordercats](../categorical/reordercats.md), [iscategory](../categorical/iscategory.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
