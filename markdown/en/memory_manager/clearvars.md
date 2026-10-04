# clearvars

Remove variables from the current workspace.

## 📝 Syntax

- clearvars
- clearvars variable_name_1 ... variable_name_N
- clearvars('-except', keep_variable_1, ..., keep_variable_N)
- clearvars(variable_name_1, ..., variable_name_N, '-except', keep_variable_1, ..., keep_variable_N)
- clearvars('-regexp', expression_1, ..., expression_N)
- clearvars(..., '-except', '-regexp', keep_expression_1, ..., keep_expression_N)
- clearvars('-global', ...)

## 📥 Input argument

- variable_name - a character vector or string scalar: variable name or wildcard pattern using \*.
- keep_variable - a character vector or string scalar: variable name or wildcard pattern to preserve.
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

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
