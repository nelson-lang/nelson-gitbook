#import "nelson_help.typ": *

= dlmake <dynamic_link:dlmake>

call make or nmake tool

== Syntax

- #raw("[res, message] = dlmake(destinationdir)");
- #raw("[res, message] = dlgeneratemake(destinationdir, libname, c_cpp_files, includes, defines, external_libraries, build_configuration, c_flags, cxx_flags)");

== Input argument

/ destinationdir: a string: destination directory where is the makefile to call.

== Output argument

/ res: a logical: true if makefile execution was successfully.
/ message: a string: empty if makefile execution was successfully or an error message.

== Description

#strong[dlmake]; used to provide an multiplatform way to build C\/C++.

 When it is called with at least one output argument, #strong[dlmake]; returns #strong[res]; (a logical) and #strong[message];. When it is called with no output argument, it raises the error #strong[Nelson:dlmake:failed]; on failure instead of returning a false status.


== Example

basic example to call dlmake

``````matlab

dest = [tempdir(), 'dlmake_help'];
mkdir(dest);
txt = 'MESSAGE( STATUS "Hello world !")';
filewrite([dest, '/CMakeLists.txt'], txt);
[status, message] = dlmake(dest)

``````


== See also

#nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
