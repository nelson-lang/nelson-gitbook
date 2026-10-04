# iscategory

Determine whether names are categories.

## 📝 Syntax

- tf = iscategory(A, names)

## 📥 Input argument

- A - Input categorical array.
- names - Category name, string array, cell array of character vectors, or pattern to test.

## 📤 Output argument

- tf - Logical result with the same size as <b>names</b>, except for pattern input where a scalar result is returned.

## 📄 Description

<b>iscategory</b> tests whether requested names are present in the category list of <b>A</b>.

Undefined elements do not create a category and are not matched by this function.

## 💡 Example

Check several category names.

```matlab
A = categorical({'red','blue'}); tf = iscategory(A, {'red','green'})
```

## 🔗 See also

[categories](../categorical/categories.md), [addcats](../categorical/addcats.md), [removecats](../categorical/removecats.md), [isundefined](../categorical/isundefined.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
