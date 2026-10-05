# func2str

Return a function handle constructed from a string.

## 📝 Syntax

- func\_handle = str2func(str)

## 📥 Input argument

- str - a string.

## 📤 Output argument

- func\_handle - a function handle

## 📄 Description


<b>func\_handle = str2func(str)</b> returns a function handle constructed from the string<b>str</b>.

## 💡 Example



```matlab
fh = str2func('cos')
class(fh)
```


## 🔗 See also

[func2str](../function_handle/func2str.md), [isfunction_handle](../function_handle/isfunction_handle.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
