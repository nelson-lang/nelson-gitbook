# str2func

Returns a function handle from a string.

## 📝 Syntax

- func_handle = str2func(str)

## 📥 Input argument

- str - a string

## 📤 Output argument

- func_handle - a function handle.

## 📄 Description

<b>function_handle = str2func(str)</b> returns a function handle<b>function_handle</b> for the function named in the string <b>str</b>

<b>str</b> function name or representation of anonymous function.

## 💡 Examples

```matlab
fh = str2func('cos')
str = func2str(fh)
```

```matlab
myFind = str2func('@(x, y) find(x > y)')
M = rand(4, 3, 5);
[R, C] = myFind(M, 0.9)
```

## 🔗 See also

[func2str](../function_handle/func2str.md), [isfunction_handle](../function_handle/isfunction_handle.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
