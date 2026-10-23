#import "nelson_help.typ": *

= dltarget <dynamic_link:dltarget>

Returns the architecture the dynamic-link tools build for.

== Syntax

- #raw("arch = dltarget()");

== Output argument

/ arch: a string: the running architecture (see computer('arch')), or 'wasm32' for a cross build.

== Description

#strong[dltarget()]; returns the architecture that #strong[dlgeneratemake];, #strong[dlmake]; and #strong[getdynlibext]; build for.

 By default it is the running architecture. When the environment variable #strong[NELSON\_DL\_TARGET]; is set to #strong[wasm32];, the dynamic-link tools describe an Emscripten side module for the WebAssembly engine instead of a host library: #strong[dlgeneratemake]; generates a CMake project that includes the engine's shared compile and link settings (#strong[NELSON\_WASM\_BUILD\_DIR\/generated\/wasm-runtime\/side-module.cmake];, default #strong[temp\/build-wasm];), #strong[dlmake]; configures it with the Emscripten toolchain found through #strong[EMSDK];, and #strong[getdynlibext]; returns #strong[.so]; whatever the host is. A toolbox builder based on these functions therefore needs no change to be packaged for the browser with #strong[nmm('pack', ..., '-target', 'wasm32')];.


== Example

``````matlab
dltarget()
setenv('NELSON_DL_TARGET', 'wasm32');
dltarget()
getdynlibext()
setenv('NELSON_DL_TARGET', '');
``````


== See also

#nlink(<dynamic_link:dlgeneratemake>)[dlgeneratemake];, #nlink(<dynamic_link:dlmake>)[dlmake];, #nlink(<dynamic_link:getdynlibext>)[getdynlibext];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
