# clearvars

Remove variables from the current workspace.

## 📝 Syntax

- clearvars
- clearvars variable\_name\_1 ... variable\_name\_N
- clearvars('-except', keep\_variable\_1, ..., keep\_variable\_N)
- clearvars(variable\_name\_1, ..., variable\_name\_N, '-except', keep\_variable\_1, ..., keep\_variable\_N)
- clearvars('-regexp', expression\_1, ..., expression\_N)
- clearvars(..., '-except', '-regexp', keep\_expression\_1, ..., keep\_expression\_N)
- clearvars('-global', ...)

## 📥 Input argument

- variable\_name - a character vector or string scalar: variable name or wildcard pattern using \*.
- keep\_variable - a character vector or string scalar: variable name or wildcard pattern to preserve.
- -regexp - selects variables whose names match one of the regular expressions.
- -except - keeps matching variables and removes the other selected variables.
- -global - removes matching global variables. This option must be the first argument.

## 📄 Description


<b>clearvars</b> removes variables from the current workspace. Without input arguments, it removes all variables in the current workspace. 

Named variables can be passed in command form or function form. Option arguments are passed in function form. 

Wildcard patterns use <b>\*</b> to match any sequence of characters. Regular expressions are enabled with <b>-regexp</b>. 

When a variable is global, <b>clearvars</b> without <b>-global</b> removes it from the current workspace only. With <b>-global</b>, matching global variables are removed from the global workspace.

## 💡 Examples

Clear named variables.

```matlab
a = 1;
b = 2;
c = 3;
clearvars a c
who
```
Clear all variables except selected variables.

```matlab
A = 1;
B = 2;
C = 3;
clearvars('-except', 'A', 'C')
who
```
Clear variables using a wildcard and preserve one variable.

```matlab
alpha = 1;
angle = 2;
beta = 3;
clearvars('a*', '-except', 'angle')
who
```
Clear variables using regular expressions.

```matlab
MonValue = 1;
TueValue = 2;
KeepValue = 3;
clearvars('-regexp', '^(Mon|Tue)')
who
```
Clear global variables except selected variables.

```matlab
global gx gy
gx = 1;
gy = 2;
clearvars('-global', '-except', 'gx')
isglobal('gx')
isglobal('gy')
clear global gx gy
```


## 🔗 See also

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md), [isglobal](../memory_manager/isglobal.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
