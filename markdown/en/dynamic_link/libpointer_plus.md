# libpointer\_plus

plus operator on libpointer handle.

## 📝 Syntax

- h2 = h.plus(offset)
- h2 = h + offset

## 📥 Input argument

- h - a libpointer handle.
- offset - a integer value: increment.

## 📄 Description


plus operator on libpointer handle. 

output libpointer is valid only as long as the original input libpointer exists.

## 💡 Example



```matlab
x = [1 2 3 4 5];
xPtr = libpointer('doublePtr', x);
y = xPtr + 2;
y.reshape(1, 3);
y.Value
```


## 🔗 See also

[libpointer](../dynamic_link/libpointer.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
