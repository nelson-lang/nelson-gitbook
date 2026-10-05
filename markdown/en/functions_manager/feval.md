# feval

Evaluates function.

## 📝 Syntax

- feval(function\_name; x1, ..., xn)
- feval(function\_handle; x1, ..., xn)
- [r1, ..., rn] = feval(function\_name, x1, ..., xn)
- [r1, ..., rn] = feval(function\_handle, x1, ..., xn)

## 📥 Input argument

- function\_name - a string: function name.
- function\_handle - a function handle.
- x1, ..., xn - input arguments of the function.

## 📤 Output argument

- r1, ..., rn - output arguments returned by the function

## 📄 Description


<b>function</b> calls the base function or built-in described by its name or function handle and input arguments.

## 💡 Example



```matlab
a = feval('cos', 0)
b = feval(str2func('cos'), 0)
```


## 🔗 See also

[builtin](../functions_manager/builtin.md), [func2str](../function_handle/func2str.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
