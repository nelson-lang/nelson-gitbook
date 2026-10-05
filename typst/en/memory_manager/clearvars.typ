#import "nelson_help.typ": *

= clearvars <memory_manager:clearvars>

Remove variables from the current workspace.

== Syntax

- #raw("clearvars");
- #raw("clearvars variable_name_1 ... variable_name_N");
- #raw("clearvars('-except', keep_variable_1, ..., keep_variable_N)");
- #raw("clearvars(variable_name_1, ..., variable_name_N, '-except', keep_variable_1, ..., keep_variable_N)");
- #raw("clearvars('-regexp', expression_1, ..., expression_N)");
- #raw("clearvars(..., '-except', '-regexp', keep_expression_1, ..., keep_expression_N)");
- #raw("clearvars('-global', ...)");

== Input argument

/ variable\_name: a character vector or string scalar: variable name or wildcard pattern using \*.
/ keep\_variable: a character vector or string scalar: variable name or wildcard pattern to preserve.
/ -regexp: selects variables whose names match one of the regular expressions.
/ -except: keeps matching variables and removes the other selected variables.
/ -global: removes matching global variables. This option must be the first argument.

== Description

#strong[clearvars]; removes variables from the current workspace. Without input arguments, it removes all variables in the current workspace.

 Named variables can be passed in command form or function form. Option arguments are passed in function form.

 Wildcard patterns use #strong[\*]; to match any sequence of characters. Regular expressions are enabled with #strong[-regexp];.

 When a variable is global, #strong[clearvars]; without #strong[-global]; removes it from the current workspace only. With #strong[-global];, matching global variables are removed from the global workspace.


== Examples

Clear named variables.

``````matlab
a = 1;
b = 2;
c = 3;
clearvars a c
who
``````

Clear all variables except selected variables.

``````matlab
A = 1;
B = 2;
C = 3;
clearvars('-except', 'A', 'C')
who
``````

Clear variables using a wildcard and preserve one variable.

``````matlab
alpha = 1;
angle = 2;
beta = 3;
clearvars('a*', '-except', 'angle')
who
``````

Clear variables using regular expressions.

``````matlab
MonValue = 1;
TueValue = 2;
KeepValue = 3;
clearvars('-regexp', '^(Mon|Tue)')
who
``````

Clear global variables except selected variables.

``````matlab
global gx gy
gx = 1;
gy = 2;
clearvars('-global', '-except', 'gx')
isglobal('gx')
isglobal('gy')
clear global gx gy
``````


== See also

#nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];, #nlink(<memory_manager:isglobal>)[isglobal];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
