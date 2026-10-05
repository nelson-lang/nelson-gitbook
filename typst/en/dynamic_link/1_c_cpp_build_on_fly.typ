#import "nelson_help.typ": *

= Build C\/C++ code on the fly <dynamic_link:1_c_cpp_build_on_fly>

Build C\/C++ code on the fly

== Description

Nelson provides a cross-platform command-line tool written in Nelson for compiling native addon modules for Nelson.

 It takes away the pain of dealing with the various differences in build platforms.


== Example

``````matlab

if ispc() && ~havecompiler()
configuremsvc()
end
C_CONTENT = ["double";
"functionC(double x)";
"{";
"    return x + 8;";
"}"];
DEST_DIR = [tempdir(), 'example_C'];
mkdir(DEST_DIR);
C_DEST_FILE = [tempdir(), 'example_C/demo.c'];
filewrite(C_DEST_FILE, C_CONTENT)

dlgeneratemake(DEST_DIR, 'C_DEMO', {C_DEST_FILE}, {DEST_DIR})
[res, message] = dlmake(DEST_DIR)

lib = dlopen([DEST_DIR, '/C_DEMO', getdynlibext()])
c = dllibinfo(lib)

f = dlsym(lib, 'functionC', 'double', {'double'});
R = dlcall(f, 3) % 8 + 3
dlclose(lib)

``````


#align(center)[#image("build_c_cpp_on_fly.png")]

== See also

#nlink(<dynamic_link:configuremsvc>)[configuremsvc];, #nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];, #nlink(<dynamic_link:dlmake>)[dlmake];, #nlink(<dynamic_link:dlopen>)[dlopen];, #nlink(<dynamic_link:dllibinfo>)[dllibinfo];, #nlink(<dynamic_link:dlsym>)[dlsym];, #nlink(<dynamic_link:dlcall>)[dlcall];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.2.0], [initial version],
)

// Author: Allan CORNET
