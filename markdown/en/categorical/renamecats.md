# renamecats

Rename categories in a categorical array.

## 📝 Syntax

- B = renamecats(A, newNames)
- B = renamecats(A, oldNames, newNames)

## 📥 Input argument

- A - Input categorical array.
- oldNames - Existing category names to rename.
- newNames - Replacement names. With two inputs, this must provide one name for every category.

## 📤 Output argument

- B - Categorical array whose category names have been changed without changing category codes.

## 📄 Description

<b>renamecats</b> changes category labels while preserving which elements belong to each category.

New names must be valid and unique after the rename operation.

## 💡 Examples

Rename one category.

```matlab
A = categorical({'red','blue'}); B = renamecats(A, 'red', 'rouge'); categories(B)
```

Rename all categories.

```matlab
A = categorical({'red','blue'}); B = renamecats(A, {'bleu','rouge'}); categories(B)
```

## 🔗 See also

[categories](../categorical/categories.md), [reordercats](../categorical/reordercats.md), [mergecats](../categorical/mergecats.md), [setcats](../categorical/setcats.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
