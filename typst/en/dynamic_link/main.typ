#import "nelson_help.typ": *

= Dynamic link

The Dynamic Link module enables Nelson to build, load, and call C\/C++ and Fortran code at runtime.

 It supports generating gateways, loaders, and managing shared libraries for integration with external compiled code.

 By default, Nelson does not try to detect a C\/C++ compiler on Windows. Do not forget to run 'configuremsvc' or 'configuremingw' once.

== Functions

- #nlink(<dynamic_link:1_c_cpp_build_on_fly>)[Build C\/C++ code on the fly]: Build C\/C++ code on the fly
- #nlink(<dynamic_link:2_supported_compilers>)[Supported C\/C++ compilers]: 
- #nlink(<dynamic_link:C_datatype>)[libpointer datatype]: C\/Nelson equivalent data types
- #nlink(<dynamic_link:cmake>)[cmake]: call CMake tool
- #nlink(<dynamic_link:configuremingw>)[configuremingw]: Configure Nelson to use MinGW as default C compiler
- #nlink(<dynamic_link:configuremsvc>)[configuremsvc]: Configure Nelson to use visual studio as default compiler
- #nlink(<dynamic_link:dlcall>)[dlcall]: C or Fortran Foreign function call.
- #nlink(<dynamic_link:dlclose>)[dlclose]: Removes dllib object.
- #nlink(<dynamic_link:dlgeneratecleaner>)[dlgeneratecleaner]: Generates cleaner.m file for C++ gateway.
- #nlink(<dynamic_link:dlgenerategateway>)[dlgenerategateway]: Generates C++ gateway.
- #nlink(<dynamic_link:dlgenerateloader>)[dlgenerateloader]: Generates loader.m file for C++ gateway.
- #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake]: Generates a makefile for building a dynamic library.
- #nlink(<dynamic_link:dlgenerateunloader>)[dlgenerateunloader]: Generates unloader.m file for C++ gateway.
- #nlink(<dynamic_link:dlgetnelsonincludes>)[dlgetnelsonincludes]: Returns paths of Nelson include directories.
- #nlink(<dynamic_link:dlgetnelsonlibraries>)[dlgetnelsonlibraries]: Returns paths to Nelson library files.
- #nlink(<dynamic_link:dllib_used>)[dllib\_used]: Returns the current valid dllib handles.
- #nlink(<dynamic_link:dllibinfo>)[dllibinfo]: Returns list of available symbols in an shared library.
- #nlink(<dynamic_link:dllibisloaded>)[dllibisloaded]: Checks if shared library is loaded.
- #nlink(<dynamic_link:dlmake>)[dlmake]: call make or nmake tool
- #nlink(<dynamic_link:dlopen>)[dlopen]: Loads an dynamic library.
- #nlink(<dynamic_link:dlsym>)[dlsym]: Loads a C\/Fortran symbol for an dynamic library.
- #nlink(<dynamic_link:dlsym_delete>)[dlsym\_delete]: Removes dlsym object.
- #nlink(<dynamic_link:dlsym_used>)[dlsym\_used]: Returns the current valid dlsym handles.
- #nlink(<dynamic_link:findcmake>)[findcmake]: find CMake path.
- #nlink(<dynamic_link:getdynlibext>)[getdynlibext]: Returns the extension of dynamic libraries.
- #nlink(<dynamic_link:havecompiler>)[havecompiler]: Detect if a C\/C++ compiler is configured.
- #nlink(<dynamic_link:isNull>)[isNull]: Determine whether a library pointer is null.
- #nlink(<dynamic_link:libpointer>)[libpointer]: Creates an C pointer object usable in Nelson.
- #nlink(<dynamic_link:libpointer_delete>)[libpointer\_delete]: Removes libpointer object.
- #nlink(<dynamic_link:libpointer_isNull>)[libpointer\_isNull]: Checks if libpointer handle points on NULL pointer.
- #nlink(<dynamic_link:libpointer_plus>)[libpointer\_plus]: plus operator on libpointer handle.
- #nlink(<dynamic_link:libpointer_reshape>)[libpointer\_reshape]: Reshapes libpointer dimensions.
- #nlink(<dynamic_link:libpointer_setdatatype>)[libpointer\_setdatatype]: Set type of an libpointer handle.
- #nlink(<dynamic_link:libpointer_used>)[libpointer\_used]: Returns the current valid libpointer handles.
- #nlink(<dynamic_link:loadcompilerconf>)[loadcompilerconf]: load compiler configuration.
- #nlink(<dynamic_link:removecompilerconf>)[removecompilerconf]: Remove used compiler configuration (on Windows).
- #nlink(<dynamic_link:vswhere>)[vswhere]: Locate Visual Studio 2017, 2019 and newer installations


#nested[
#pagebreak(weak: true)
#include "1_c_cpp_build_on_fly.typ"
#pagebreak(weak: true)
#include "2_supported_compilers.typ"
#pagebreak(weak: true)
#include "C_datatype.typ"
#pagebreak(weak: true)
#include "cmake.typ"
#pagebreak(weak: true)
#include "configuremingw.typ"
#pagebreak(weak: true)
#include "configuremsvc.typ"
#pagebreak(weak: true)
#include "dlcall.typ"
#pagebreak(weak: true)
#include "dlclose.typ"
#pagebreak(weak: true)
#include "dlgeneratecleaner.typ"
#pagebreak(weak: true)
#include "dlgenerategateway.typ"
#pagebreak(weak: true)
#include "dlgenerateloader.typ"
#pagebreak(weak: true)
#include "dlgeneratemake.typ"
#pagebreak(weak: true)
#include "dlgenerateunloader.typ"
#pagebreak(weak: true)
#include "dlgetnelsonincludes.typ"
#pagebreak(weak: true)
#include "dlgetnelsonlibraries.typ"
#pagebreak(weak: true)
#include "dllib_used.typ"
#pagebreak(weak: true)
#include "dllibinfo.typ"
#pagebreak(weak: true)
#include "dllibisloaded.typ"
#pagebreak(weak: true)
#include "dlmake.typ"
#pagebreak(weak: true)
#include "dlopen.typ"
#pagebreak(weak: true)
#include "dlsym.typ"
#pagebreak(weak: true)
#include "dlsym_delete.typ"
#pagebreak(weak: true)
#include "dlsym_used.typ"
#pagebreak(weak: true)
#include "findcmake.typ"
#pagebreak(weak: true)
#include "getdynlibext.typ"
#pagebreak(weak: true)
#include "havecompiler.typ"
#pagebreak(weak: true)
#include "isNull.typ"
#pagebreak(weak: true)
#include "libpointer.typ"
#pagebreak(weak: true)
#include "libpointer_delete.typ"
#pagebreak(weak: true)
#include "libpointer_isNull.typ"
#pagebreak(weak: true)
#include "libpointer_plus.typ"
#pagebreak(weak: true)
#include "libpointer_reshape.typ"
#pagebreak(weak: true)
#include "libpointer_setdatatype.typ"
#pagebreak(weak: true)
#include "libpointer_used.typ"
#pagebreak(weak: true)
#include "loadcompilerconf.typ"
#pagebreak(weak: true)
#include "removecompilerconf.typ"
#pagebreak(weak: true)
#include "vswhere.typ"
]
