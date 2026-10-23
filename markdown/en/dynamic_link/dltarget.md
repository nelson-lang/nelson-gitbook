# dltarget

Returns the architecture the dynamic-link tools build for.

## 📝 Syntax

- arch = dltarget()

## 📤 Output argument

- arch - a string: the running architecture (see computer('arch')), or 'wasm32' for a cross build.

## 📄 Description


<b>dltarget()</b> returns the architecture that <b>dlgeneratemake</b>, <b>dlmake</b> and <b>getdynlibext</b> build for. 

By default it is the running architecture. When the environment variable <b>NELSON\_DL\_TARGET</b> is set to <b>wasm32</b>, the dynamic-link tools describe an Emscripten side module for the WebAssembly engine instead of a host library: <b>dlgeneratemake</b> generates a CMake project that includes the engine's shared compile and link settings (<b>NELSON\_WASM\_BUILD\_DIR/generated/wasm-runtime/side-module.cmake</b>, default <b>temp/build-wasm</b>), <b>dlmake</b> configures it with the Emscripten toolchain found through <b>EMSDK</b>, and <b>getdynlibext</b> returns <b>.so</b> whatever the host is. A toolbox builder based on these functions therefore needs no change to be packaged for the browser with <b>nmm('pack', ..., '-target', 'wasm32')</b>.

## 💡 Example



```matlab
dltarget()
setenv('NELSON_DL_TARGET', 'wasm32');
dltarget()
getdynlibext()
setenv('NELSON_DL_TARGET', '');
```


## 🔗 See also

[dlgeneratemake](../dynamic_link/dlgeneratemake.md), [dlmake](../dynamic_link/dlmake.md), [getdynlibext](../dynamic_link/getdynlibext.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
