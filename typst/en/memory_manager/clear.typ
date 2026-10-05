#import "nelson_help.typ": *

= clear <memory_manager:clear>

Remove variable from workspace.

== Syntax

- #raw("clear");
- #raw("clear variable_name");
- #raw("clear('-regexp', expression_1, ..., expression_N)");
- #raw("clear global");
- #raw("clear all");
- #raw("clear mex");
- #raw("clear variables");
- #raw("clear functions");
- #raw("clear classes");
- #raw("clear function_name");
- #raw("clear mexfunction_name");
- #raw("clear variable_name_1 ... variable_name_N");
- #raw("clear global variable_name_1 ... variable_name_N");

== Input argument

/ variable\_name: a character vector or string scalar: variable name.
/ -regexp: clears variables in the current workspace whose names match one of the regular expressions.
/ global: clears all global variables.
/ all: clears all variables in all scopes
/ mex: clears all mex functions in all scopes
/ variables: clears all variables in current scope.
/ functions: clears cache of macros functions and associated persistent variables.
/ classes: clears live classdef variables, classdef metadata, and generated class method cache.
/ function\_name: clears persistent variables of a function.
/ mexfunction\_name: clears mex function (see mexAtExit).

== Description

#strong[clear]; is used to remove variable given by its name.

 #strong[clear('-regexp', ...)]; removes variables in the current workspace whose names match one of the given regular expressions.

 #strong[clear]; can also delete handle object if a function handle\_TYPE\_clear is defined.

 #strong[clear classes]; removes live classdef variables and reloads classdef definitions from disk on the next use.


== Examples

``````matlab
A = 3;
who
clear A
who
exist('A', 'var')
``````

Clear variables by regular expression.

``````matlab
MonValue = 1;
TueValue = 2;
KeepValue = 3;
clear('-regexp', '^Mon', '^Tue')
who
``````

Reload a classdef definition from disk.

``````matlab
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
``````


== See also

#nlink(<memory_manager:clearvars>)[clearvars];, #nlink(<memory_manager:who>)[who];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
