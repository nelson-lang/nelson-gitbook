#import "nelson_help.typ": *

= engOpen <mex:engOpen>

Start Nelson process

== Syntax

- #raw("#include \"engine.h\"");
- #raw("Engine *engOpen(const char *startcmd);");

== Input argument

/ startcmd: Nelson startup command (NULL).

== Output argument

/ Engine: handle to Nelson engine or NULL.

== Description

#strong[engOpen]; starts a Nelson process for using Nelson as a computational engine.

 Libraries path need to contain nelson path to find Nelson's libraries at runtime.

 Set the value to the path returned by the following Nelson command:

 #strong[res]; \= modulepath('nelson', 'builtin')

 on linux: export LD\_LIBRARY\_PATH\=\$LD\_LIBRARY\_PATH:#strong[res];

 export PATH\=\$PATH:#strong[res];

 on macos: export DYLIB\_LIBRARY\_PATH\=\$DYLIB\_LIBRARY\_PATH:#strong[res];

 export PATH\=\$PATH:#strong[res];

 on windows: set PATH\=%PATH%;#strong[res];


== Example

``````matlab
edit([modulepath('mex', 'tests'), '/test_engine.c'])
``````


== See also

#nlink(<mex:mex>)[mex];, #nlink(<mex:engClose>)[engClose];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
