# isundefined

Find undefined categorical elements.

## 📝 Syntax

- tf = isundefined(A)

## 📥 Input argument

- A - Input array.

## 📤 Output argument

- tf - Logical array with the same size as <b>A</b>.

## 📄 Description


<b>isundefined</b> returns <b>true</b> for categorical elements that do not belong to any category. 

For noncategorical input, the result is a logical array of <b>false</b> values with the same size as the input.

## 💡 Example

Locate undefined categorical values.

```matlab
A = categorical({'red','','blue'}); tf = isundefined(A)
```


## 🔗 See also

[categorical](../categorical/categorical.md), [categories](../categorical/categories.md), [setcats](../categorical/setcats.md), [countcats](../categorical/countcats.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
