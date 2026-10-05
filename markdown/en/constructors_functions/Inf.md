# Inf

Infinity

## 📝 Syntax

- Inf
- inf
- Inf(n)
- Inf(n, m)
- Inf(n, classname)
- Inf(n, m, classname)
- Inf(classname)

## 📥 Input argument

- n - a scalar integer: number of rows (and columns if m is omitted).
- m - a scalar integer: number of columns.
- classname - a string: 'double' (default) or 'single'.

## 📄 Description


<b>Inf</b> returns the IEEE symbol Inf (Infinity). 

<b>Inf(n)</b> returns an n-by-n matrix filled with <b>Inf</b>. 

<b>Inf(n, m)</b> returns an n-by-m matrix filled with <b>Inf</b>. 

The optional <b>classname</b> argument selects the class of the result and must be either <b>'double'</b> (default) or <b>'single'</b>.

## 💡 Examples



```matlab
Inf
```


```matlab
-Inf + Inf
```


```matlab
1.e1000
```


## 🔗 See also

[nan](../constructors_functions/NaN.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
