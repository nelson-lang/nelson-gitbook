#import "../nelson_help.typ": *

= 0.2.12 (2018-12-31) <main:CHANGELOG-0.2.x>


== Features:


HDF5 high-level functions:

- h5dump: Dump the content of hdf5 file as text.
- h5ls: List the content of an hdf5.
- h5writeatt: Writes HDF5 attribute.
- h5readatt: Read HDF5 attribute.
- h5write: Writes HDF5 data set.
- h5readatt: Read HDF5 data set.
- h5create: Creates a data set.

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/170")[\#170];: Travis CI Macos X (mojave) build failed.

- #link("https://github.com/nelson-lang/nelson/issues/168")[\#168];: integer display was not interruptible.

== Compilation:


- BOOST 1.68 on Windows
- Eigen 3.3.7

== 0.2.11 (2018-11-24)


== Features:


- Nelson in the cloud:

  - easy way to deploy (#link("https://www.npmjs.com/package/nelson-cloud")[npm package]; and #link("https://hub.docker.com/r/nelsonsoftware/nelson-sio-cli/")[docker];)
  - add 'sioemit' builtin. Send data from Nelson to client.
  - add 'siogetvariable' function. Send variable value to cliend.
  - add nelson\_sio\_client executable used by Nelson in the cloud framework.

- addition, substration, mtimes, times, power with integers reworked.
- integer cast optimized.
- modernize/optimize C++ with LLVM tools.

== 0.2.10 (2018-10-20)


== Features:


- string array type added:

  - strings, string builtin: string array constructor.
  - isstring: Return true if variable var is a string array.
  - parser updated to manage string array:

``````
    A = ["Nelson" "manages"; "string" "array"]
``````


  - isequal, isequaln, isequalto extended to manage string array.
  - transpose, ctranspose extended to manage string array.
  - horzcat, vertcat extended to manage string array.
  - cell extended to manage string array.
  - double extended to manage string array.
  - tolower, toupper extended to manage string array.
  - strtrim extended to manage string array.
  - strlength extended to manage string array.
  - count extended to manage string array.
  - contains extended to manage string array.
  - startsWith, endsWith extended to manage string array.
  - replace, strrep extended to manage string array.
  - str2double extended to manage string array.
  - fprintf, sprintf extended to manage string array.
  - strfind extended to manage string array.
  - strcmp, strcmpi, strncmp, strncmpi extended to manage string array.
  - fileread, filewrite extended to manage string array.
  - operators \=\=, \~\=, \<, \>, \>\=, \<\= extended to manage string array.
  - operator plus extended to manage string array.
  - loadbin, savebin extended to manage string array.
  - MPI interface extended to manage string array.

- deblank builtin: removes trailing whitespace from a cell of strings, a string array or a character vectors.

- ismissing builtin: search missing values.

- cellstr function: converts to cell array of character vectors.

- operators \=\=, \~\=, \<, \>, \>\=, \<\= reworked (Compatibility Array Sizes increased).

- \=\=, \~\=, isequal: speed optimization.

- internal API C++ methods renamed:

  - "stringConstructor" --\> "characterArrayConstructor".
  - "isString" --\> "isCharacterArray"
  - "isSingleString" --\> "isRowVectorCharacterArray"

- #link("https://github.com/nelson-lang/nelson/issues/164")[\#164];: operators \=\=, \~\=, \<, \>, \>\=, \<\= code factorized.

- #link("https://github.com/nelson-lang/nelson/issues/159")[\#159];: addpath must return an warning and not an error for an non existing path.

- #link("https://github.com/nelson-lang/nelson/issues/157")[\#157];: fix warnings detected by LGTM.com.

- #link("https://github.com/nelson-lang/nelson/issues/156")[\#156];: Moves dbstack in 'debugger' module.

== 0.2.9 (2018-09-23)


== Features:


- Overload and speed optimization:

  - all operators use by default predefined functions. Nelson will search if operators are missing for a specific type.
  - add overloadbasictypes function to change default behavior.
  - gamma function speed x4 (overloading)

- power element-wise operator reworked (overloading and mixed types).

- colon operator reworked (overloading and mixed types).

- ndarray subclass no more exists. class merged with basic type (speed optimization).

- isequalto builtin added (returns true if all arguments x1, x2, ... , xn are equal i.e same type, same dimensions, same values or NaNs).

- tanm, sinm builtin added.

- strtrim builtin: removes leading and trailing whitespace from a cell of strings or a string.

- cell & struct managed for complex transpose & transpose.

- for, index column or matrix: behavior changed.

  Warning: It is a breaking feature.

``````
  // Please replace:
  A = [1:4]';
  for i = A, x = i + 1, end
  // by:
  A = [1:4]';
  for i = A(:)', x = i + 1, end
``````


== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/133")[\#133];: Replaced uncommon term "trinary" by "ternary".

- #link("https://github.com/nelson-lang/nelson/issues/119")[\#119];: Execution of simple expression "1+2+3" was rather slow.

- #link("https://github.com/nelson-lang/nelson/issues/115")[\#115];:code about single & double operators was factorized

- #link("https://github.com/nelson-lang/nelson/issues/114")[\#114];: Move gamma function in a dedicated module "special\_functions".

== Compilation:


- Enable LGTM.com analysis for C/C++ code.

== 0.2.8 (2018-08-26)


== Features:


- error manager reworked.

  - internal C++ function did no more require reference to evaluator.
  - error and warning internally managed as exceptions.

- 'dbstack' builtin get current instruction calling tree.

- #link("https://github.com/nelson-lang/nelson/issues/16")[\#16];: lastwarn builtin (Last recorded warning message).

- #link("https://github.com/nelson-lang/nelson/issues/15")[\#15];: warning builtin was extended (state and identifier added).

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/152")[\#152];: insertion did not return expected result for empty matrix.

- #link("https://github.com/nelson-lang/nelson/issues/138")[\#138];: colon operator did not return expected for non scalar element.

== Compilation:


- Qt 5.11.1 on Windows

== 0.2.7 (2018-07-29)


== Features:


- sqrt builtin (Square root)

- log builtin (Natural logarithm)

- angle function (Phase angle)

- atan2 builtin (four-quadrant inverse tangent)

- exp builtin (exponential)

- #link("https://github.com/nelson-lang/nelson/issues/142")[\#142];: clear('functionName') clears all persistent variables of functionName function.

- addition, subtraction reworked (Compatibility Array Sizes increased, code factorized).

- &, |, &&, || operators reworked (Compatibility Array Sizes increased).

- havecompiler uses a persistent variable to speedup result.

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/145")[\#145];: int32(NaN) did not return 0.

- #link("https://github.com/nelson-lang/nelson/issues/131")[\#131];: for, parfor, switch, try keywords were not documented.

== 0.2.6 (2018-06-26)


== Features:


- Nelson provides a cross-platform command-line tool written in Nelson for compiling native addon modules for Nelson. It takes away the pain of dealing with the various differences in build platforms:

  - helper's functions to build C/C++ code easily on Windows, Linux, MacOS X:

    - dlgeneratemake: generates a makefile for building a dynamic library.
    - dlgeneratecleaner: generates cleaner.nls file for C++ gateway.
    - dlgenerateloader: generates loader.m file for C++ gateway.
    - dlgenerateunloader: generates unloader.m file for C++ gateway.
    - dlgenerategateway: generates C++ gateway.
    - findcmake: find CMake path.
    - cmake function: call CMake tool.
    - dlmake: call make or nmake tool.

  - detect and configure C/C++ compilers on Windows, Linux, MacOS:

    - On Windows:

      - VS 2017 Professional, Enterprise, Community supported.
      - MinGW-W64 for 32 and 64 bit supported.
      - By default, Nelson does not try to detect a C/C++ compiler on Windows.
        Do not forget to run 'configuremsvc' or 'configuremingw' once.

    - On Linux:

      - GNU C/C++ Compilers, Clang.

    - MacOS X:
      - Xcode or GNU compiler available via Homebrew .

  - havecompiler function: returns if a compiler is configured.
  - configuremingw function: select and configure Mingw-w64 compilers.
  - configuremsvc function: select and configure Microsoft compilers.
  - loadcompilerconf function: load compiler configuration
  - removecompilerconf function: remove compiler configuration
  - vswhere function: detects easily modern Microsoft compilers.

- module skeleton updated to build an example with C++ function (cpp\_sum).

- sprintf, fprintf functions: format data into a string or a file.

- add "\<--C/C++ COMPILER REQUIRED--\>" tag managed by test engine.

- add "\<--INDEX 64 BIT REQUIRED--\>" tag managed by test engine.

- norm function: matrix and vectors norms.

- #link("https://github.com/nelson-lang/nelson/issues/128")[\#128];: code indented with clang-format (webkit coding style)

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/139")[\#139];: fix(1e10) returned a wrong value.

- #link("https://github.com/nelson-lang/nelson/issues/136")[\#136];: Corrected precedence of Colon ":" operator.

- #link("https://github.com/nelson-lang/nelson/issues/134")[\#134];: Evaluation of Non-Scalar If-Condition Expression was not managed.

- #link("https://github.com/nelson-lang/nelson/issues/116")[\#116];: fix display size of big sparse matrix.

== Compilation:


- libffi 3.2.1 dll on Windows 32 & 64 bit

== 0.2.5 (2018-05-23)


== Features:


- logm: matrix logarithm.
- sqrtm: square root of a square matrix.
- eval function: evaluates string for execution in Nelson.
- evalin function: evaluates string for execution in Nelson in a specified scope.
- evalc function: Evaluate Nelson code with console capture.
- winqueryreg function read the Windows registry (Windows only).
- factorial function.
- gamma function.
- plus, minus, le, ne, ge, gt, lt, eq, colon operators added for all integer types.
- le, ne, ge, gt, lt, eq for mixed single & double types.
- add generic overload mechanism for all integers: integer keyword.
- vertcat and horzcat: mixed concatenations logical with integers, single and double added.
- #link("https://github.com/nelson-lang/nelson/issues/110")[\#110];: add isproperty & ismethod to all handle types.
- add "isHandleProperty", "isHandleMethod", "getHandleCategory" C++ API Methods.
- #link("https://github.com/nelson-lang/nelson/issues/108")[\#108];: cast function: converts variable to a different data type.
- MPI Module loaded if MPI dependency is available.

== Bug Fixes:


- #link("https://github.com/nelson-lang/nelson/issues/125")[\#125];: cosm function was slow.

- #link("https://github.com/nelson-lang/nelson/issues/123")[\#123];: addpath stopped to work after repeatedly call to the same path.

- #link("https://github.com/nelson-lang/nelson/issues/121")[\#121];: home key did not work in GUI terminal on prompt.

- #link("https://github.com/nelson-lang/nelson/issues/118")[\#118];: add information in DEVELOPMENT.md about how to build Boost on old Ubuntu versions.

- #link("https://github.com/nelson-lang/nelson/issues/109")[\#109];: add missing horzcat, vertcat for all handle types.

== Compilation:


- BOOST 1.67 on Windows
- MSMPI 9.0.1 on Windows
- Update Visual Studio 15.7.1

== 0.2.4 (2018-04-30)


== Features:


- Foreign Function Interface: call C/Fortran functions that are compiled into shared libraries.

  - dlopen: loads an dynamic library.
  - dlclose: removes/unload dllib object.
  - dlsym: loads a C/Fortran symbol for an dynamic library.
  - dlcall: C or Fortran Foreign function call.
  - dllibinfo: returns list of available symbols in an shared library.
  - dllibisloaded: checks if shared library is loaded.
  - libpointer: creates an C pointer object usable in Nelson.
  - getdynlibext : returns the extension of dynamic libraries.

- #link("https://github.com/nelson-lang/nelson/issues/101")[\#101];: allows cell\_vertcat\_generic & cell\_horzcat\_generic.

== Bug Fixes:


#link("https://github.com/nelson-lang/nelson/issues/106")[\#106];: update slicot url references.

#link("https://github.com/nelson-lang/nelson/issues/104")[\#104];: mpiexec did not work on some linux.

== 0.2.3 (2018-03-22)


== Features:


- 'strlength': length of strings in an cell of strings.
- 'strrep' and 'replace' builtin : replace substring in a string.
- export AUDIODEV\=null disables audio module (used for Travis CI)
- 'xmldoctomd' : Converts xml Nelson help files to markdown format.
- 'buildhelpmd' : Build help of Nelson's modules for GitBook.

  see #link("https://nelson-9.gitbook.io/nelson/en")[Nelson's GitBook];.

== 0.2.2 (2018-02-25)


== Features:


- 'count' : computes the number of occurrences of an pattern.
- 'startsWith' : checks if string starts with pattern.
- 'endsWith' : checks if string ends with pattern.
- 'contains' : checks if string contains a pattern.
- audiometadata can modify metadata tags.
- Qt 5.10 used on Windows binaries

== Bug Fixes:


#link("https://github.com/nelson-lang/nelson/issues/98")[\#98];: jsonencode was slow with a big file (\> 60 Mo).

#link("https://github.com/nelson-lang/nelson/issues/97")[\#97];: fileread was slow with a big file (\> 60 Mo).

#link("https://github.com/nelson-lang/nelson/issues/93")[\#93];: playblocking updated to manage range.

#link("https://github.com/nelson-lang/nelson/issues/92")[\#92];: play updated to manage range.

#link("https://github.com/nelson-lang/nelson/issues/90")[\#90];: factorize handle objects methods.

== 0.2.1 (2018-01-30)


== Features:


- pause: pause script execution.
- keyboard: stop script execution and enter in debug mode.

- Audio module:

  - beep: do a beep sound.
  - audiodevinfo: Information about audio device.
  - audioplayer: creates an audio player object.
  - play: plays audio object.
  - playblocking: plays audio object and block execution until finish.
  - pause: pauses audio object.
  - stop: stops audio object.
  - resume: resumes audio object.
  - isplaying: returns if audio object is playing.
  - audioread: read an audio file.
  - audioread: write an audio file.
  - audioinfo: get information about audio file.
  - audiometadata: get metadata information about audio file.

- JSON module:

  - jsonencode: encodes a Nelson object into a JSON string.
  - jsondecode: decodes a JSON string into a Nelson object.
  - jsonprettyprint: JSON pretty printer.

- #link("https://github.com/nelson-lang/nelson/issues/89")[\#89];: extends fileread behavior.

- 'filewrite' builtin allows to easily write to file a string array or a cell of strings.

- 'newline' function: returns newline character i.e char(10).

- ndarraychar\_disp was missing.

- NIG slicot uses json files.

== Bug Fixes:


Regenerates help files index if database is empty or wrong (\>\= Qt 5.9)

#link("https://github.com/nelson-lang/nelson/issues/87")[\#87];: struct did not support sparse matrix.

== Compilation:


- Update VS 2017 solution to VS 2017 15.5.4

== Previous changelog:


#nlink(<main:CHANGELOG-0.1.x>)[Changelog v0.1.x];
