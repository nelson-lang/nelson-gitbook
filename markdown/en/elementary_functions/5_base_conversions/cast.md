# cast

Converts variable to a different data type

## 📝 Syntax

- R = cast(V, type\_destination)
- R = cast(V, 'like', W)

## 📥 Input argument

- V - a variable
- type\_destination - a string: name of destination data type.
- W - a variable

## 📤 Output argument

- R - a variable with new data type.

## 📄 Description


<b>cast</b> converts variable to a different data type. 

<b>R = cast(V, 'like', W)</b> converts variable V to sparsity and same data type than W.

## 💡 Example



```matlab
r = cast([3.6 1.2 -2.4], 'like', int64(3))
r = cast([3.6 1.2 -2.4], 'int64')
```


## 🔗 See also

[class](../../types/class.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
