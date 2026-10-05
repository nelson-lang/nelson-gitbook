# isprotected

Determine whether a categorical array is protected.

## 📝 Syntax

- tf = isprotected(A)

## 📥 Input argument

- A - Input value.

## 📤 Output argument

- tf - Logical scalar that is <b>true</b> for protected categorical arrays.

## 📄 Description


<b>isprotected</b> reports whether a categorical array prevents implicit category expansion during assignment. 

Ordinal categorical arrays are protected automatically.

## 💡 Example

Create a protected categorical array and test it.

```matlab
A = categorical({'low','high'}, {'low','high'}, 'Protected', true); tf = isprotected(A)
```


## 🔗 See also

[categorical](../categorical/categorical.md), [isordinal](../categorical/isordinal.md), [addcats](../categorical/addcats.md), [setcats](../categorical/setcats.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
