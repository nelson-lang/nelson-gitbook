# structfun

Apply a function to each field of a scalar structure.

## 📝 Syntax

- B = structfun(fun, S)
- B = structfun(fun, S, 'UniformOutput', tf)

## 📥 Input argument

- fun - function handle applied to each field value.
- S - scalar structure.
- tf - 'UniformOutput' flag: true (default) or false.

## 📤 Output argument

- B - column vector (uniform output) or structure (non-uniform output).

## 📄 Description


<b>structfun(fun, S)</b> applies <b>fun</b> to each field of the scalar structure <b>S</b> and returns the results as a column vector. 

With <b>'UniformOutput'</b> set to <b>false</b>, the results are returned in a structure with the same fields as <b>S</b>.

## 💡 Example



```matlab
s.a = 1; s.b = 2; s.c = 3;
structfun(@(x) x * 2, s)
```


## 🔗 See also

[cellfun](../data_structures/cellfun.md), [arrayfun](../data_structures/arrayfun.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
