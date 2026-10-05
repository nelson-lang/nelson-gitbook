# setcats

Set the category list of a categorical array.

## 📝 Syntax

- B = setcats(A, newCategories)

## 📥 Input argument

- A - Input categorical array.
- newCategories - Complete replacement category list.

## 📤 Output argument

- B - Categorical array using exactly the categories listed in <b>newCategories</b>.

## 📄 Description


<b>setcats</b> replaces the category list of a categorical array. 

Elements whose previous category is not present in <b>newCategories</b> become undefined. Categories in <b>newCategories</b> that were not previously present are added as unused categories.

## 💡 Examples

Keep only selected categories.

```matlab
A = categorical({'red','blue','green'}); B = setcats(A, {'red','blue'}); isundefined(B)
```
Add an unused category through a complete category list.

```matlab
A = categorical({'red','blue'}); B = setcats(A, {'red','blue','green'}); categories(B)
```


## 🔗 See also

[addcats](../categorical/addcats.md), [removecats](../categorical/removecats.md), [isundefined](../categorical/isundefined.md), [categories](../categorical/categories.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
