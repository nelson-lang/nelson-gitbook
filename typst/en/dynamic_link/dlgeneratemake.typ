#import "nelson_help.typ": *

= dlgeneratemake <dynamic_link:dlgeneratemake>

Generates a makefile for building a dynamic library.

== Syntax

- #raw("[res, message] = dlgeneratemake(destinationdir, libname, c_cpp_files, include)");
- #raw("[res, message] = dlgeneratemake(destinationdir, libname, c_cpp_files, includes, defines, external_libraries, build_configuration, c_flags, cxx_flags)");
- #raw("[res, message] = dlgeneratemake(maketype, destinationdir, libname, c_cpp_files, include)");
- #raw("[res, message] = dlgeneratemake(maketype, destinationdir, libname, c_cpp_files, includes, defines, external_libraries, build_configuration, c_flags, cxx_flags)");

== Input argument

/ maketype: a string: 'executable' or 'dynamic\_library'.
/ destinationdir: a string: destination directory where is generated the makefile.
/ libname: a string: destination dynamic library or executable name.
/ c\_cpp\_files: a string or a cell of strings: .c or .cpp list files (full filename)
/ include: a string or a cell of strings: directories where to find include files.
/ defines: a string or a cell of strings: a list of defines
/ external\_libraries: a string or a cell of strings: a list of external libraries to link
/ build\_configuration: a string: 'Debug' or 'Release'
/ c\_flags: a string: C flags
/ cxx\_flags: a string: C flags

== Output argument

/ res: a logical: true if makefile was generated.
/ message: a string: empty if makefile was generated or an error message.

== Description

#strong[dlgeneratemake]; generates a makefile adapted to your system environment for building shared libraries.

 Thanks to #strong[CMake]; to help Nelson in this task.

 When it is called with at least one output argument, #strong[dlgeneratemake]; returns #strong[res]; (a logical) and #strong[message];. When it is called with no output argument, it raises the error #strong[Nelson:dlgeneratemake:failed]; on failure instead of returning a false status.


== Example

See module skeleton for example

``````matlab
[status, message] = dlgeneratemake(currentpath, ...
'module_skeleton', ...
{[currentpath, '/cpp/cpp_sumBuiltin.cpp'], [currentpath, '/cpp/Gateway.cpp']}, ...
[{[currentpath, '/include']; [currentpath, '/../src/include']}; dlgetnelsonincludes()], ...
[], ...
[dlgetnelsonlibraries(); [currentpath, '/../src/business_code']]);
``````


== See also

#nlink(<dynamic_link:dlmake>)[dlmake];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
