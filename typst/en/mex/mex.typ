#import "nelson_help.typ": *

= mex <mex:mex>

Build MEX function

== Syntax

- #raw("mex(filenames)");
- #raw("mex(filenames, option1, ..., optionN)");
- #raw("mex(api, filenames)");
- #raw("mex(api, filenames, option1, ..., optionN)");
- #raw("mex('-output', mexName, filenames)");
- #raw("mex(api, '-output', mexName, filenames)");
- #raw("mex(api, '-output', mexName, filenames, option1, ..., optionN)");
- #raw("mex('-client, 'engine', filenames)");
- #raw("mex('-client', 'engine', 'filenames', api, option1, ..., optionN)");

== Input argument

/ '-client', 'engine': enable to build C\/C++ source files into standalone engine application.
/ api: a string: '-R2017b' (separated complex representation) or '-R2018a' (interleaved complex representation).
/ filenames: a string or cell of characters: list of files to use. First filename used as mex name.
/ mexName: a string: override naming convention.
/ option1, ..., optionN: string: compilation or link option.

== Description

To use mex, C\/C++ compiler must be available and configured. See Supported C\/C++ compilers section for more information.

 Nelson includes an interface to allow legacy mex-files to be compiled and linked with Nelson.

 A mex file is a type of computer file that provides an interface between Octave or the reference commercial software and functions written in C, C++.

 Nelson also provides its own C++ API to manage internal Nelson objects.

 

 PREDEFINED C MACRO:

 The #strong[MX\_IS\_NELSON]; macro detects whether Nelson is used in C code.

 #strong[MX\_HAS\_INTERLEAVED\_COMPLEX]; macro is defined if C MEX API used is '-R2018a'.

 

 Supported options: compilation or link.

 #strong[CFLAGS\=];

 #strong[-D]; The -D option defines C preprocessor macro.

 #strong[-U]; The -U option undefines C preprocessor macro

 #strong[-I]; Adds pathname to the list of folders to search for \#include files.

 #strong[-l]; Links with dynamic object library .lib, .so or .dylib.

 #strong[-g]; Used for debugging (Debug configuration).


== Example

``````matlab

		edit([modulepath('mex', 'tests'), '/test_engine.m'])

``````


== See also

#nlink(<dynamic_link:2_supported_compilers>)[Supported C\/C++ compilers];, #nlink(<dynamic_link:dlgenerategateway>)[dlgenerategateway];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
