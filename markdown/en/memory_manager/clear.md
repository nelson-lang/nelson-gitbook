# clear

Remove variable from workspace.

## 📝 Syntax

- clear
- clear variable_name
- clear global
- clear all
- clear mex
- clear variables
- clear functions
- clear function_name
- clear mexfunction_name
- clear variable_name_1 ... variable_name_N
- clear global variable_name

## 📥 Input argument

- variable_name - a string: variable name.
- global - clears all global variables.
- all - clears all variables in all scopes
- mex - clears all mex functions in all scopes
- variables - clears all variables in current scope.
- functions - clears cache of macros functions and associated persistent variables.
- function_name - clears persistent variables of a function.
- mexfunction_name - clears mex function (see mexAtExit).

## 📄 Description

<b>clear</b> is used to remove variable given by its name.

<b>clear</b> can also delete handle object if a function handle_TYPE_clear is defined.

## 💡 Example

```matlab
A = 3;
who
clear A
who
A
```

## 🔗 See also

[who](../memory_manager/who.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
