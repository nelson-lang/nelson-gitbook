# clear

Remove variable from workspace.

## 📝 Syntax

- clear
- clear variable_name
- clear('-regexp', expression_1, ..., expression_N)
- clear global
- clear all
- clear mex
- clear variables
- clear functions
- clear classes
- clear function_name
- clear mexfunction_name
- clear variable_name_1 ... variable_name_N
- clear global variable_name_1 ... variable_name_N

## 📥 Input argument

- variable_name - a character vector or string scalar: variable name.
- -regexp - clears variables in the current workspace whose names match one of the regular expressions.
- global - clears all global variables.
- all - clears all variables in all scopes
- mex - clears all mex functions in all scopes
- variables - clears all variables in current scope.
- functions - clears cache of macros functions and associated persistent variables.
- classes - clears live classdef variables, classdef metadata, and generated class method cache.
- function_name - clears persistent variables of a function.
- mexfunction_name - clears mex function (see mexAtExit).

## 📄 Description

<b>clear</b> is used to remove variable given by its name.

<b>clear('-regexp', ...)</b> removes variables in the current workspace whose names match one of the given regular expressions.

<b>clear</b> can also delete handle object if a function handle_TYPE_clear is defined.

<b>clear classes</b> removes live classdef variables and reloads classdef definitions from disk on the next use.

## 💡 Examples

```matlab
A = 3;
who
clear A
who
exist('A', 'var')
```

Clear variables by regular expression.

```matlab
MonValue = 1;
TueValue = 2;
KeepValue = 3;
clear('-regexp', '^Mon', '^Tue')
who
```

Reload a classdef definition from disk.

```matlab
clear classes
d = [tempdir(), 'nelson_help_clear_classdef_en/'];
mkdir(d);
file = [d, '/NelsonHelpClearReloadEn.m'];
filewrite(file, ["classdef NelsonHelpClearReloadEn"; "  properties (Constant)"; "    Version = 1"; "  end"; "end"]);
addpath(d);
NelsonHelpClearReloadEn.Version
filewrite(file, ["classdef NelsonHelpClearReloadEn"; "  properties (Constant)"; "    Version = 2"; "  end"; "end"]);
clear classes
NelsonHelpClearReloadEn.Version
```

## 🔗 See also

[clearvars](../memory_manager/clearvars.md), [who](../memory_manager/who.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
