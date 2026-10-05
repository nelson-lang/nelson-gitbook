#import "nelson_help.typ": *

= engOpenSingleUse <mex:engOpenSingleUse>

Start Nelson engine session for single and nonshared use.

== Syntax

- #raw("#include \"engine.h\"");
- #raw("Engine *engOpenSingleUse(const char *startcmd, void *dcom, int *retstatus);");

== Input argument

/ startcmd: Nelson startup command (NULL).
/ dcom: must be NULL.

== Output argument

/ Engine: handle to Nelson engine or NULL.
/ retstatus: status; possible cause of failure.

== Description

engOpenSingleUse start Nelson engine session for single and nonshared use.


== Example

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== See also

#nlink(<mex:mex>)[mex];, #nlink(<mex:engClose>)[engClose];, #nlink(<mex:engOpen>)[engOpen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
