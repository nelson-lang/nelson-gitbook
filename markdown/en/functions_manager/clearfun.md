# clearfun

Clear an built-in function.

## 📝 Syntax

- l = clearfun(function\_name)
- l = clearfun(function\_handle)

## 📥 Input argument

- function\_name - a string: function name.
- function\_handle - a function handle.

## 📤 Output argument

- l - a logical

## 📄 Description


<b>clearfun</b> clears built-in.

## 💡 Example



```matlab
cos(3)
a = clearfun('cos')
cos(3)

sin(3)
b = clearfun(str2func('sin'))
sin(3)

```


## 🔗 See also

[feval](../functions_manager/feval.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
