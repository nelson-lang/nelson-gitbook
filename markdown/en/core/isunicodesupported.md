# isunicodesupported

Detect whether the current terminal supports Unicode.

## 📝 Syntax

- tf = isunicodesupported()

## 📤 Output argument

- tf - a logical: true or false.

## 📄 Description


<b>isunicodesupported</b>: returns if current terminal supports Unicode. 

value returned can be overloaded if environment variable 'NELSON\_TERM\_IS\_UNICODE\_SUPPORTED' is 'TRUE'

## 💡 Example



```matlab
isunicodesupported()
```


## 🔗 See also

[getnelsonmode](../engine/getnelsonmode.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
