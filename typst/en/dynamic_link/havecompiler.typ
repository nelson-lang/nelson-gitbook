#import "nelson_help.typ": *

= havecompiler <dynamic_link:havecompiler>

Detect if a C\/C++ compiler is configured.

== Syntax

- #raw("[status, compiler] = havecompiler()");

== Output argument

/ status: a logical.
/ compiler: a string: 'msvc', 'mingw', 'unix' or ' '.

== Description

#strong[havecompiler]; detects if C\/C++ compiler is configured for Nelson.

 On Unix platforms (linux, MacOs),#strong[havecompiler]; returns always #strong[true]; as status and#strong[unix]; as compiler.


== Example

``````matlab
[status, message] = havecompiler()
``````


== See also

#nlink(<dynamic_link:configuremsvc>)[configuremsvc];, #nlink(<dynamic_link:configuremingw>)[configuremingw];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
