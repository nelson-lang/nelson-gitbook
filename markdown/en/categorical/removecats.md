# removecats

Remove categories from a categorical array.

## 📝 Syntax

- B = removecats(A)
- B = removecats(A, oldCategories)

## 📥 Input argument

- A - Input categorical array.
- oldCategories - Categories to remove. If omitted, unused categories are removed.

## 📤 Output argument

- B - Categorical array with a reduced category list.

## 📄 Description


<b>removecats</b> removes categories from the category list. 

Elements that belonged to removed categories become undefined. When <b>oldCategories</b> is omitted, only unused categories are removed.

## 💡 Examples

Remove an unused category.

```matlab
A = categorical({'red','blue'}, {'red','blue','green'}); B = removecats(A, 'green'); categories(B)
```
Remove a used category and create undefined elements.

```matlab
A = categorical({'red','blue','green'}); B = removecats(A, 'green'); isundefined(B)
```


## 🔗 See also

[addcats](../categorical/addcats.md), [setcats](../categorical/setcats.md), [mergecats](../categorical/mergecats.md), [isundefined](../categorical/isundefined.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
