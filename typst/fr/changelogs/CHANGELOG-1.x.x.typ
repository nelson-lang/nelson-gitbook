#import "../nelson_help.typ": *

= Changelog <main:CHANGELOG-1.x.x>


All notable changes to this project will be documented in this file.

The format is based on #link("https://keepachangelog.com/en/1.0.0/")[Keep a Changelog];,
and this project adheres to #link("https://semver.org/spec/v2.0.0.html")[Semantic Versioning];.

== \[unreleased\]


=== Changed


- Boost is no longer a dependency. The #raw("ipc"); module now uses native process
  primitives: named pipes on Windows and AF\_UNIX sockets on POSIX for the
  transport, #raw("std::thread"); for the receiver, a fixed-layout shared-memory PID
  registry, and a dependency-free binary serializer for exchanged variables.

=== Fixed


- #raw("ipc");: function handles (including anonymous handles with captured variables)
  and #raw("missing"); values now transfer correctly between instances; variables
  larger than the former queue limit are no longer rejected.

== 1.17.0 - (2026-05-25)


🕯️ #strong[In memory of Cleve Moler (1939–2026)];

This release is dedicated to the memory of Cleve Moler, creator of MATLAB and a towering figure in numerical computing. His vision of making linear algebra accessible to engineers and scientists changed the way the world writes scientific software and inspired every project that followed in his footsteps, including Nelson.
We are grateful for the path he blazed.

=== Added


- function argument validation using #raw("arguments ... end"); blocks
  - Support for validation functions (e.g., #raw("mustBeNumeric");, #raw("mustBeMember");)
  - Default values for optional positional and name-value arguments
  - Separate validation blocks for input and output arguments
  - Improved error messages for invalid function arguments

- Debugger Support
  - Full breakpoint management with commands: #raw("dbstop");, #raw("dbstep");, #raw("dbcont");, #raw("dbquit");, #raw("dbclear");, #raw("dbdown");, #raw("dbup");, #raw("dbstatus");.
  - Support for setting breakpoints at specific files, functions, and lines.
  - Conditional breakpoints and hit-count breakpoints (if applicable).

- Interactive Debugging in Text Editor
  - Real-time feedback on breakpoints directly within the editor.
  - Inline variable inspection while stepping through code.
  - Highlighting of the current execution line.

- Step Execution Controls
  - Step Into: move into function calls.
  - Step Over: execute functions without entering them.
  - Continue: resume execution until the next breakpoint.

- Stack Inspection & Variable Evaluation
  - Examine the call stack during debugging with #raw("dbup"); and #raw("dbdown");.
  - Evaluate and modify variables in the current workspace.
  - Inspect function arguments and local variables.

- Enhanced Debugging Experience
  - Integration with the command-line interface and editor interface.
  - Improved visibility of function contexts and nested calls.

- Added support for multi-line comments in the interpreter, editor, debugger, and headcomments.

- #raw("interp2");, #raw("interp3");, #raw("interpn");: interpolation functions

- #raw("regexp");, #raw("regexpi");, #raw("regexprep");,  #raw("regextranslate");: regexp functions added.

- #link("https://github.com/nelson-lang/nelson/issues/309")[\#309];: #raw("erf");, #raw("erfc");, #raw("erfcinv");, #raw("erfcx");, #raw("erfinv"); error functions.

- #link("https://github.com/nelson-lang/nelson/issues/1289")[\#1289];: #raw("isbetween");, #raw("allbetween");, #raw("mustBeBetween"); functions.

- #raw("tiledlayout");, #raw("nexttile");, #raw("tilenum");, #raw("tilerowcol"); layout management.

- #link("https://github.com/nelson-lang/nelson/issues/813")[\#813];: #raw("findobj"); Find graphics objects with specific properties.

- #raw("contourf");, #raw("contourc");, Filled contour plot of matrix.

- Dedicated Windows Terminal profile installed for the application.

- help engine extending to manage subchapters.

- #raw("xmldoclinkchecker"); Checks unresolved cross-references in Nelson help XML files.

- MacOS packaging as dmg installer.

- Qt 6.11.0 support.

- Full CMake configuration and build system for Visual Studio  (x64, Win32, ARM64).

- Ubuntu 26.04 ready.

- Fedora 44 ready.

=== Changed


- Reduced interpreter overhead in tight loops.
- Internal tooling refactored: nodejs and python tools for formatting and version updates replaced with Rust-based tools.
- CMake factorized.
- Innosetup installer modernized.
- fmtlib 12.1

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/1585")[\#1585];: Memory leak during scalar assignments in tight/nested loops after scalar inline-data optimization.
- #link("https://github.com/nelson-lang/nelson/issues/1567")[\#1567];: UTF-16LE output despite encoding\='UTF-8' in fprintf builtin (Windows).
- #link("https://github.com/nelson-lang/nelson/issues/1564")[\#1564];: Regression: modifying copy unexpectedly alters original array.
- #link("https://github.com/nelson-lang/nelson/issues/1550")[\#1550];: getpid('available') did not work as expected.
- #link("https://github.com/nelson-lang/nelson/issues/1547")[\#1547];: Parsing of \~\= operator with spaces was not working correctly, causing it to be misinterpreted as a matrix row separator.
- unresolved cross-references in Nelson help XML files.
- memory leak in uicontrol.

== 1.16.0 - (2025-12-27)


=== Added


- Windows ARM64 support: build and installer available.
- #raw("onCleanup");: Execute code during function shutdown.
- #link("https://github.com/nelson-lang/nelson/issues/188")[\#188]; #raw("audiorecorder");: Record audio.
- #raw("getaudiodata");: Retrieve recorded audio as a numeric array.
- #raw("isrecording");: Check if audio recording is in progress.
- #raw("record");: Record audio to an #raw("audiorecorder"); object.
- #raw("recordblocking");: Record audio and block until completion.
- #raw("getplayer");: Create an associated #raw("audioplayer"); object.
- #raw("TimerFcn");, #raw("StartFcn");, #raw("StopFcn"); callbacks for #raw("audioplayer"); and #raw("audiorecorder");.
- #raw("rms");: Compute root mean square of array elements.
- #raw("daspect");: Set data unit length along each axis.
- #raw("pbaspect");: Set relative axis lengths.

=== Changed


- Advanced terminal: #raw("linenoise"); replaced by #raw("replxx"); for improved line editing.
- Autocomplete: Upgraded functionality in advanced command-line terminal.
- Axis handling: Enhanced axis limit normalization and improved #raw("DataAspectRatio");.

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/1494")[\#1494];: In advanced CLI mode, pasting long lines no longer causes character duplication.
- #link("https://github.com/nelson-lang/nelson/issues/1493")[\#1493];: #raw("doc"); function works again on Nelson Cloud (regression in 1.15.0).
- #link("https://github.com/nelson-lang/nelson/issues/1492")[\#1492];: Temporary message removed when generating toolbox help.
- BLAS/OpenBLAS detection improved in example #raw("run([modulepath('dynamic_link'), '/examples/call_fortran.m'])"); on some Linux systems.
- #raw("imresize");: Now supports scalar string arrays as input arguments.
- #link("https://github.com/nelson-lang/nelson/issues/1505")[\#1505];: Updated CMake to 4.2 and ICU to 78.1 on Windows

== 1.15.0 - (2025-11-21)


Starting with v1.15, Nelson for Windows is officially signed with a Certum-issued code-signing certificate.
This is a major security milestone, ensuring the authenticity and integrity of Nelson’s Windows releases.

Nelson remains a non-profit, community-driven project.
The certificate represents a significant cost for a volunteer effort - any donation to help cover it is deeply appreciated.

=== Added


- Pair Name/Value argument syntax for plotting (e.g. #raw("plot(x, y, '--rs', LineWidth=2, MarkerEdgeColor='k')");).
- Support for ignored outputs in assignments (e.g. #raw("[~, V, ~] = svd(A)");).
- New random engines: #raw("simdTwister");, #raw("combRecursive");, #raw("philox");, #raw("threefry");.
- #raw("randi");: uniform random integers.
- #raw("sprand");, #raw("sprandn");: sparse random matrices (uniform and normal).
- #raw("mink");, #raw("maxk");: k smallest / largest elements.
- #raw("subspace");: angle/distance between column spaces.
- #raw("std");: standard deviation.
- #raw("findpeaks");: local maxima detection.
- #raw("downsample");: integer-factor resampling.
- #raw("imresize");: image resizing (scale or target size).
- #raw("clabel");: contour labeling.
- Extended colormap placement locations: #raw("north");, #raw("south");, #raw("east");, #raw("west"); and their outside variants.
- Variable Editor: redesigned UI with improved performance, structured/table/array support and copy-paste compatibility with common spreadsheet apps.
- Continuation prompt: context-aware interactive prompts.
- #raw("missing");: create missing values for arrays and tables.
- #raw("renameStructField");: rename structure fields.
- #raw("convertStringToCharArgs");: convert string/cell-of-strings to char-args.
- #raw("jsondecode(..., '-file')");: decode JSON directly from a file.
- #raw("tdigest");: t-digest quantile estimation.
- #raw("pascal"); and #raw("gallery"); helper matrices.
- #raw("crc32"); builtin: compute CRC32 of file/string.
- #raw("markdown");: output mode option (#raw("secure"); | #raw("advanced");).
- #raw("fwrite");: also return written byte count as a second output.
- #raw("loadenv");: load environment variables from .env or text files.
- #raw("help");: function help available in Command Window.
- #raw("consolebox");: show/hide Windows terminal for Nelson session.
- CI / platform additions: macOS Tahoe 26, Fedora 43, Python 3.14, Visual Studio 2026 support.

=== Changed


- #raw("svd");: optimized for multithreading and large matrices.
- Help framework: reworked for performance and maintainability (multithreaded builds, improved search, unified stylesheet, XSLT, LaTeX formula support, French translations, removed Qt help dependency, secure links).
- #raw("jsondecode");: integrated #link("https://simdjson.org/")[simdjson]; for faster parsing.
- #raw("fileread");: improved performance for large files.
- #raw("fwrite");: returns character count for character data.
- #raw("i18nExtractor");, browser variable and other internals: refactored for speed and reliability.
- Third-party library updates on Windows (HDF5, zlib, matio) and Qt upgraded to 6.10.0 (Win x64).
- Benchmarks and #raw("xmldocchecker");: updated/improved.
- External packages: installing a package switches to local embedded help; packages must be rebuilt for the new help format.
- Removed several Boost dependencies to simplify builds.
- Private functions no longer appear in autocompletion.
- GitHub CI: MacOS Ventura replaced by MacOS 15 Intel.
- Markdown renderer switched to cmark.
- #link("https://github.com/nelson-lang/nelson/issues/1458")[\#1458]; Optional support for Eigen 5.0.0 when detected.
- #link("https://github.com/nelson-lang/nelson/issues/1465")[\#1465]; Test file renaming to bug\_github\_issue\_XXX.

=== Fixed


- #raw("ans"); variable: created only for expressions.
- #raw("jsondecode");: fixed parsing of arrays that contain empty arrays.
- #raw("fwrite");: fixed behavior when precision is unspecified.
- #raw("eye");: handled no-argument call correctly.
- #link("https://github.com/nelson-lang/nelson/issues/2")[\#2]; Sparse type insertion & extraction extended and corrected.
- Julia engine: compatibility with Julia 1.12.0

== 1.14.0 - (2025-05-30)


=== Added


- New functions:
  - #raw("imrotate");: Rotate an image.
  - #raw("scatter3");: 3D scatter plot.
  - #raw("colormaplist");: List available colormaps.
  - #raw("arrayfun");: Apply a function to each element of an array.
  - #raw("nelsonappid");: Return the Nelson application ID.
- New colormaps:
  - #raw("nebula");, #raw("flag");, #raw("prism");.
- New properties:
  - #raw("WindowState"); for #raw("Figure"); objects.
  - #raw("Units"); for #raw("UIControl"); objects.
  - #raw("DefaultFigureAlphamap");, #raw("DefaultFigureColormap"); as root properties.
- Support for #raw("nix develop");, providing a reproducible Bash shell preconfigured with Nelson’s build environment.
  See #nlink(<main:BUILDING>)[BUILDING.md]; for details.
- A #link("https://just.systems/man/en/")[#raw("justfile");]; to streamline and standardize the build process across platforms.
- Support for:
  - Fedora 42.
  - #link("https://flathub.org/apps/io.github.nelson_lang.Nelson")[Flatpak]; package distribution.

=== Changed


- #raw("scatter"); improvements:
  - Now returns a scatter graphic object (instead of a line graphic object).
  - Improved rendering precision for scatter symbols (pixel-perfect accuracy).
  - Supports alpha channel (transparency).
- #raw("scatter3"); now supports alpha channel.
- #raw("spy"); now uses #raw("scatter"); instead of #raw("plot"); for better accuracy.
- Colormap handling updated to use the new #raw("DefaultFigureColormap"); root property.
- Improved error message when parsing invalid anonymous functions.
- Boost:
  - Now supports Boost 1.88 (#link("https://github.com/nelson-lang/nelson/issues/1378")[\#1378];).
  - Minimum required version set to 1.71.
- Updated dependencies and platform support:
  - Qt 6.9.0 on Windows x64.
  - JSON for Modern C++ updated to v3.12.0.
  - Mozilla CA certificates updated (Tue May 20 03:12:02 2025 GMT).

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/1413")[\#1413];: #raw("axes"); function did not properly manage figure objects.

=== Technical Improvements


- Application ID changed to #raw("io.github.nelson_lang.Nelson");.
- GitHub CI:
  - Now uses Windows 2025 for Windows builds.
  - Major workflow rework for improved reliability and maintainability.
- Build system:
  - Updated to latest Prettier version.
  - Added use of shared library suffix via a CMake macro.
  - Included CPU target name in Linux packages.
  - Minimized dependencies on SLICOT.

== 1.13.0 - (2025-03-29)


This release introduces performance improvements and new graphical capabilities while deprecating support for 32-bit Windows versions.

=== Changed


- #strong[Windows x64 Compatibility];: Now requires the #link("https://en.wikipedia.org/wiki/Advanced_Vector_Extensions#CPUs_with_AVX2")[AVX2]; instruction set.
- #strong[Windows 32-bit Support];: Official distribution of 32-bit Windows binary versions has been discontinued.
- #strong[macOS Optimization];: Builds for macOS with M-series chips now leverage native optimizations for improved performance.
- #strong[Plot Performance];: Optimized #raw("plot"); and #raw("plot3"); functions for increased speed. Example:
``````matlab
  tic(); plot(rand(300,300), rand(300,300)); toc();
``````

- #strong[Dependencies Updated];:
  - Upgraded #raw("fmtlib"); to version 11.1.3.
  - Intel Math Kernel Library (MKL) updated to 2025.0.1 on Windows.
- #strong[Internal Enhancements];:

  - OpenMP multithreading macros have been reworked for better efficiency.

- #raw("SLICOT"); module incorporates SLICOT library 5.9, which is distributed under the BSD-3-Clause license.

  - #raw("SLICOT"); module available on all platforms by default.

- python 3.13.2 embedded on Windows

=== Added


- #strong[Double Buffering for Plots];:

  - Implemented double buffering to enhance the smoothness and responsiveness of graphical plots.
  - Significantly reduces flickering during graphical updates.

- #strong[New Graphics Functions];:

  - #raw("getframe");: Captures an axes or figure as a movie frame.
  - #raw("movie");: Plays recorded movie frames.
  - #raw("im2frame");: Converts an image to a movie frame.
  - #raw("frame2im");: Returns image data associated with a movie frame.
  - #raw("DevicePixelRatio");: New figure property to handle display scaling.

- #strong[Graphics IO]; module:

  - #raw("imwrite");: create gif animations.
  - #raw("imwrite");, #raw("imread");: pcx, tiff file formats managed.
  - #raw("imformats");: Manage image file format registry.

- #strong[New Example];:

  - Added an example for connecting #raw("ollama"); with Nelson:
``````matlab
    edit([modulepath('webtools'), '/examples/ollama/readme.md'])
``````


- #strong[CMake Enhancement];:

  - Introduced #raw("ENABLE_AVX2"); CMake option for systems that support AVX2.
  - CMake dependencies reworked.

=== Fixed


- MacOs: Default terminal did not use monospaced font.

- Some warnings detected with PVS-studio

== 1.12.0 (2025-02-16)


=== Added


- Julia interface (part 1):

  - #raw("jlenv");: Change default environment of Julia interpreter.
  - #raw("jlrun");: Run Julia statements from Nelson.
  - #raw("jlrunfile");: Run Julia file from Nelson.
  - Major types conversions are available.
  - CMake: Optional Julia engine detection.

- #raw("bar");, #raw("scatter"); manage color name and short colorname.
- Github CI Ubuntu 24.04 arm64 (Cobalt 100 processor).
- Github CI Snapcraft build amd64 and arm64.
- Snapcraft arm64.

=== Changed


- Completion .m files allows execution without extension.
- #link("https://github.com/nelson-lang/nelson/issues/1342")[\#1342]; Github CI - Ubuntu-20.04 hosted runner image removed.

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/1346")[\#1346]; \[display\] integer in cell are displayed as double and not as integer.

== 1.11.0 (2025-01-11)


=== Added


- #link("https://github.com/nelson-lang/nelson/issues/1321")[\#1321]; #raw("mustBeSparse"); validator function.
- #link("https://github.com/nelson-lang/nelson/issues/1322")[\#1322]; #raw("cmdsep");: Command separator for current operating system.
- #raw("urlencode");: Replace special characters in URLs with escape characters.
- #raw("docroot");: Utility to retrieve or define the root directory of Nelson Help.
- #raw("ismodule");: second input argument #raw("isprotected"); added.
- #raw("editor('editor_command', cmd)"); allows to change text editor in Nelson (for example: VS Code).
- #raw("NELSON_RUNTIME_PATH"); environment variable added by installer on Windows.
- #raw("--vscode"); command line argument added.
- NixOS 24.11 packaging (see #link("https://github.com/nelson-lang/nelson/blob/master/BUILDING_Linux.md")[BUILDING\_Linux.md];).

=== Changed


- Help Center: Access documentation in your system's web browser. Previously, the documentation was opened in the embedded Help browser.
- CA certificate store update.
- fmt library dependency updated.
- BS::threadpool library dependency updated.
- Advanced terminal updated (common for all platforms without GUI, auto completion, search history).
- Python 3.13.1 supported.

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/1324")[\#1324]; Cell display could not be interrupted.

== 1.10.0 (2024-12-14)


=== Added


- #raw("detectImportOptions");: Generate import options from the file's content.
- #raw("readtable");: Read table from file.
- #raw("writetable");: Write table to file.
- #raw("readcell");: Read cell array from file.
- #raw("writecell");: write cell array to file.
- #raw("readmatrix");: read matrix from file.
- #raw("writematrix");: write matrix to file.
- #raw("csvread");: Read comma-separated value (CSV) file.
- #raw("csvwrite");: Write comma-separated value (CSV) file.
- #raw("dlmread");: Read ASCII-delimited file of numeric data into matrix.
- #raw("realmin");: Smallest normalized floating-point number.
- #link("https://github.com/nelson-lang/nelson/issues/1288")[\#1288]; #raw("mustBeMatrix");, #raw("mustBeRow");, #raw("mustBeColumn"); validator functions.
- #raw("join");: Combine strings.
- #link("https://github.com/nelson-lang/nelson/issues/1292")[\#1292]; Large Table Display.
- #link("https://github.com/nelson-lang/nelson/issues/1290")[\#1290]; #raw("VariableTypes"); property for table: Specify the data types of table in Nelson.
- #raw("hour");, #raw("minute");, #raw("second"); component of input date and time.

=== Changed


- #raw("narginchk");, #raw("nargoutchk"); support for check only minimum arguments #raw("narginchk(3, Inf)");.
- Fedora 41 CI
- #raw("title");: #raw("Visible"); property is inherited from the parent if not explicitly defined.
- i18n: migration PO files to JSON.
- #raw("dlmwrite");: rework the function to be more fast and robust.
- #raw("strjust");: rework the function to be more fast and robust.
- #raw("datenum");: support '' as format for compatibility.

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/1303")[\#1303]; #raw("datevec"); result must be normalized.
- #link("https://github.com/nelson-lang/nelson/issues/1297")[\#1297]; some features have no help files.
- #link("https://github.com/nelson-lang/nelson/issues/1276")[\#1276]; micromamba macos build.

== 1.9.0 (2024-10-26)


=== Added


- Table direct computation:

  - unary functions: #raw("abs");, #raw("acos");, #raw("acosh");, #raw("acot");, #raw("acotd");, #raw("acoth");,
    #raw("acsc");, #raw("acscd");, #raw("acsch");, #raw("asec");, #raw("asecd");, #raw("asech");,
    #raw("asin");, #raw("asind");, #raw("asinh");, #raw("atan");, #raw("atand");, #raw("atanh");,
    #raw("ceil");, #raw("cosd");, #raw("cosh");, #raw("cospi");, #raw("cot");, #raw("cotd");,
    #raw("coth");, #raw("csc");, #raw("cscd");, #raw("csch");, #raw("exp");, #raw("fix");,
    #raw("floor");, #raw("log");, #raw("log10");, #raw("log1p");, #raw("log2");, #raw("nextpow2");,
    #raw("round");, #raw("sec");, #raw("secd");, #raw("sech");, #raw("sin");, #raw("sind");,
    #raw("sinh");, #raw("sinpi");, #raw("sqrt");, #raw("tan");, #raw("tand");, #raw("tanh");,
    #raw("var");, #raw("acosd");, #raw("not");.
  - binary functions: #raw("plus");, #raw("minus");, #raw("times");, #raw("eq");, #raw("ge");, #raw("gt");, #raw("le");,
    #raw("ne");, #raw("lt");, #raw("rdivide");, #raw("rem");, #raw("power");, #raw("pow2");, #raw("or");, #raw("mod");, #raw("ldivide");.

- #raw("end"); magic keyword can be overloaded for classes (applied to #raw("table"); class).
- #link("https://github.com/nelson-lang/nelson/issues/1250")[\#1250]; #raw("head");, #raw("tail"); functions for table and array.
- #link("https://github.com/nelson-lang/nelson/issues/1248")[\#1248]; #raw("removevars");, #raw("renamevars"); functions for table.

=== Changed


- #link("https://github.com/nelson-lang/nelson/issues/1259")[\#1259]; Add macOS Sequoia and remove macOS Monterey CI support.
- Qt 6.8 LTS support (used on Windows 64 bits binary).
- Python 3.13.0 on Windows.
- Boost 1.86 on Windows.

== 1.8.0 (2024-10-04)


=== Added


- #strong[#raw("table"); Data Type];:

  - Introduced the #raw("table"); data type, offering enhanced functionality for structured data manipulation.

  - Overloaded methods specific to the #raw("table"); data type:

    - #raw("disp");, #raw("display"); for table display.
    - #raw("horzcat");, #raw("vertcat"); for horizontal and vertical concatenation.
    - #raw("isempty"); to check if the table is empty.
    - #raw("isequal");, #raw("isequalto"); for table comparison.
    - #raw("properties"); for accessing table metadata.
    - #raw("subsasgn"); for subscripted assignment.
    - #raw("subsref"); for subscripted referencing.

  - Conversion functions added:

    - #raw("array2table");: Convert an array to a table.
    - #raw("cell2table");: Convert a cell array to a table.
    - #raw("struct2table");: Convert a structure to a table.
    - #raw("table2array");: Convert a table to an array.
    - #raw("table2cell");: Convert a table to a cell array.
    - #raw("table2struct");: Convert a table to a structure.

  - Utility functions introduced:
    - #raw("width");: Retrieve the number of columns in the table
    - #raw("height");: Retrieve the number of rows in the table
    - #raw("istable");: Check if a variable is of the #raw("table"); data type

- #raw("Resize"); - Resize figure property.
- #link("https://github.com/nelson-lang/nelson/issues/36")[\#36]; #raw("datenum"); format compatibility extended.
- #link("https://github.com/nelson-lang/nelson/issues/37")[\#37]; #raw("datestr"); Convert date and time to string format.

=== Changed


- CodeQL Github action updated.

=== Fixed


- fix 'units' refresh for 'axes' object.

== 1.7.0 (2024-08-28)


=== Added


- #raw("uicontrol"); Create user interface control (button, slider, edit, list box, etc.).
- #raw("waitfor"); Block execution and wait for condition.
- #raw("waitforbuttonpress"); — Wait for click or key press.
- #raw("im2double"); — Convert image to double.
- #raw("CloseRequestFcn"); — Close request callback for #raw("figure");.
- #raw("CreateFcn"); — Create callback for all graphic objects.
- #raw("DeleteFcn"); — Delete callback for all graphic objects.
- #raw("BusyAction"); — Busy action for all graphic objects.
- #raw("Interruptible"); — Interruptible property for all graphic objects.
- #raw("BeingDeleted"); — Being deleted property for all graphic objects.
- #raw("KeyPressFcn");, #raw("KeyReleaseFcn");, #raw("ButtonDownFcn"); properties for #raw("figure");.

=== Changed


- Refactor the internal implementation of the 'system' built-in function.

- Python 3.12.5 on Windows.

== 1.6.0 (2024-06-29)


=== Added


- #raw("unique");: Unique values.
- #raw("ndgrid");: Rectangular grid in N-D space.
- #raw("nthroot");: Real nth root of real numbers.
- #raw("allfinite");: Check if all array elements are finite.
- #raw("j"); as imaginary unit number is also supported. example #raw("3+2j"); equivalent to #raw("3+2i");.
- #raw("FollowLocation"); option for #raw("weboptions");
- oneAPI Threading Building Blocks optional dependency.
- Ubuntu 24.04 debian package.
- Ubuntu 24.04 CI

=== Changed


- #raw("sort");: speed optimization.

- Windows dependencies updated and rebuild with minimal dependencies:

  - Qt 6.7.1,
  - Visual C++ 2022 Redistributable v14.40.33810.00,
  - boost 1.85,
  - Python 3.12.4,
  - Intel Math Kernel Library 2024.1.1,
  - Intel runtime,
  - SLICOT,
  - gettext 0.22.5,
  - cmake 3.30.0 rc3,
  - libsndfile 1.2.2,
  - portaudio 19.7.5,
  - taglib 2.0,
  - libzip1 1.3.1,
  - libcurl 8.8.0,
  - icu4c 74.2,
  - libffi 3.4.6,
  - libxml2 2.11.7

- Unicode® Standard, Version 15.1 support

- simdutf 5.2.8
- fast\_float 6.1.1
- dtl 1.2.0

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/1210")[\#1210]; #raw("bode"); did not unwrap phase.
- #link("https://github.com/nelson-lang/nelson/issues/1206")[\#1206]; #raw("balance"); yields wrong Transformation Matrix.
- #link("https://github.com/nelson-lang/nelson/issues/1205")[\#1205]; #raw("diag"); may return wrong sub-diagonals.
- #link("https://github.com/nelson-lang/nelson/issues/1202")[\#1202]; buildhelpmd does not generate SUMMARY as expected.
- #link("https://github.com/nelson-lang/nelson/issues/1201")[\#1201]; Matrix Exponential #raw("expm"); might give wrong results.
- #link("https://github.com/nelson-lang/nelson/issues/1200")[\#1200]; Matrix Parsing/Evaluation trouble.

== 1.5.0 (2024-05-31)


=== Added


- #raw("dictionary"); data type.

  - #raw("dictionary");: Object that maps unique keys to values.
  - #raw("configureDictionary");: Create dictionary with specified key and value types.
  - #raw("insert");: Add entries to a dictionary.
  - #raw("lookup");: Find value in dictionary by key.
  - #raw("remove");: Remove dictionary entries.
  - #raw("entries");: Key-value pairs of dictionary.
  - #raw("keys");: Keys of dictionary.
  - #raw("values");: Values of dictionary.
  - #raw("types");: Types of dictionary keys and values.
  - #raw("numEntries");: Number of key-value pairs in dictionary.
  - #raw("isConfigured");: Determine if dictionary has types assigned to keys and values.
  - #raw("isKey");: Determine if dictionary contains key.
  - #raw("keyHash");: Generate hash code for dictionary key.
  - #raw("keyMatch");: Determine if two dictionary keys are the same.

- #raw("bernsteinMatrix");: Bernstein matrix.

- #raw("orderedfields");: Order fields of structure array.

- Python interface (part 3):

  - #link("https://github.com/nelson-lang/nelson/issues/1160")[\#1160]; Python operators in Nelson.
  - #raw("keyHash");, #raw("keyMatch"); for python objects.
  - #raw("isa"); builtin support python types.
  - python dictionary to Nelson dictionary #raw("dictionary(pyDict)");
  - conversion dictionary to python dictionary.

=== Changed


- help files generated sorted by name on all platforms.
- on windows, Qt libraries used are in debug mode.

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/1195")[\#1195]; #raw("strcmp({'a'},[\"a\"])"); did not return expected value.

== 1.4.0 (2024-04-27)


=== Added


- Python interface (part 2):

  - #link("https://github.com/nelson-lang/nelson/issues/1168")[\#1168]; Run Python script file from Nelson.
  - #link("https://github.com/nelson-lang/nelson/issues/1141")[\#1141]; Help about Managing Data between Python and Nelson.
  - #link("https://github.com/nelson-lang/nelson/issues/1149")[\#1149]; python bytes, and bytearray types were not managed.
  - #link("https://github.com/nelson-lang/nelson/issues/1163")[\#1163]; pyenv searches python by version on Windows.
  - #link("https://github.com/nelson-lang/nelson/issues/1164")[\#1164]; Embed python distribution on Windows.
  - #link("https://github.com/nelson-lang/nelson/issues/1167")[\#1167]; Help about how to install Python package from Nelson.
  - numpy types support if numpy available.
  - #raw("pyenv");: can use environment variables to set values.

- #raw("getenv");: Retrieve the values of several environment variables.
- #raw("pyrun");: Python code object allowed as first input argument.
- #raw("nelson --without_python"); starts nelson without python engine.
- #raw("skip_testsuite");: allows to skip test suite dynamically on condition.

=== Changed


- Allow to call method of a variable of CLASS/HANDLE type like a function (currently, only plugged for python subtype).
- #link("https://github.com/nelson-lang/nelson/issues/1142")[\#1142]; Github Actions updated.
- #link("https://github.com/nelson-lang/nelson/issues/1157")[\#1157]; Qt 6.7 support (used on Windows 64 bits binary).
- #raw("copyfile");, #raw("isfile");, #raw("isdir");, #raw("mkdir"); allow string array type as input.
- warning about 'Matrix is singular to working precision' for inv matrix.
- tests webtools skipped if connection fails or not available.

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/1144")[\#1144]; test\_run markdown help file had a typo.
- #link("https://github.com/nelson-lang/nelson/issues/1143")[\#1143]; Linux Snapcraft version did not allow to use python.
- #link("https://github.com/nelson-lang/nelson/issues/1148")[\#1148]; pyrun('print(A)','A','A',string(NaN)) did not return expected value.
- #raw("single(int64([1 2; 3 4]))"); returned a wrong value.
- #raw("py.tuple");, #raw("py.list"); compatibility increased.
- #raw("pyenv"); did not manage python's path with space on Windows.
- Matio 1.5.27 compatibility on ArchLinux.
- Ubuntu 24.04 LTS support.
- #link("https://github.com/nelson-lang/nelson/issues/1178")[\#1178]; Fedora 40 support (CI).
- #link("https://github.com/nelson-lang/nelson/issues/1134")[\#1134]; \[CI\] MacOS X Ventura restored.

== 1.3.0 (2024-03-30)


=== Added


- Python interface (part 1):

  - CMake: Optional Python3 detection.
  - #raw("pyenv"); Change default environment of Python interpreter.
  - #raw("pyrun"); Run Python statements from Nelson.
  - Major types conversions are compatible (numpy in the next upcoming version).

- ArchLinux packaging (https:\/\/aur.archlinux.org/packages/nelson-git).
- #raw("contour"); Contour plot of matrix.
- #raw("contour3"); 3-D contour plot.
- #raw("shiftdim"); Shift array dimensions.
- #raw("xcorr2"); 2-D cross-correlation.
- #raw("deconv"); Deconvolution and polynomial division.
- #raw("vecnorm"); Vector-wise norm.
- #raw("normpdf"); Normal probability density function.
- #link("https://github.com/nelson-lang/nelson/issues/310")[\#310]; #raw("gammaln"); Logarithm of gamma function.
- #link("https://github.com/nelson-lang/nelson/issues/1112")[\#1112]; #raw("gradient"); Numerical gradient.
- #link("https://github.com/nelson-lang/nelson/issues/1126")[\#1126]; #raw("isspace"); Determine which characters are space characters.

=== Changed


- #link("https://github.com/nelson-lang/nelson/issues/1110")[\#1110]; Eigen master branch (352ede96e4c331daae4e1be9a5f3f50fff951b8d) ready to use.
- #link("https://github.com/nelson-lang/nelson/issues/1134")[\#1134]; \[CI\] MacOS X Ventura disabled (Install dependencies fails)
- #raw("struct"); supports scalar string array as field name.

=== Fixed


- #link("https://github.com/nelson-lang/nelson/issues/1110")[\#1110]; add help about build and use C/C++ on fly.
- #link("https://github.com/nelson-lang/nelson/issues/1124")[\#1124]; unexpected result from long statements on Multiple Lines.
- #link("https://github.com/nelson-lang/nelson/issues/1127")[\#1127]; Nelson could crash if an mxn characters is displayed in the variable browser.
- #link("https://github.com/nelson-lang/nelson/issues/1125")[\#1125]; Unsupported colon operator with char operands.
- Missing 'zoom in', 'zoom out' icons for help viewer in linux package.
- #raw("gcd"); without argument returned wrong error message.
- #link("https://github.com/nelson-lang/nelson/issues/1133")[\#1133]; \[CI\] \[ARCH LINUX\] Warning about MPI.

== 1.2.0 (2024-02-25)


=== Added


- Recursive completion on Graphic handle, struct, handle, class (properties, methods).
- Adding links between documents about mex and supported compilers.
- GitHub CI for macOS Sonoma (Apple Silicon) support.
- #raw("Export to ..."); context menu for console and text editor as pdf.
- #raw("CTRL + Mouse wheel"); or #raw("CTRL + +/-"); to zoom in/out on console, editor, help.
- Toolbar for figure with print, zoom in, zoom out, rotation, pan, restore axes.
- #raw("zoom ");, #raw("pan ");, #raw("rotate3d "); functions.
- #raw("MenuBar");, #raw("ToolBar"); figure properties.
- Window menu on graphic window, list all others available windows.
- #raw("feature"); builtin (undocument features, debug, tests, ...) content can change with next releases.
- #raw("GridAlpha");, #raw("GridColor");, #raw("View"); properties for Axes.
- CTRL+C in help viewer, copy selected text.
- #raw("checkupdate"); function and check update menu.
- #raw("isScalarStringArray"); iinternal API C++ method.

=== Changed


- Clicking on an axis automatically sets it as the current axes object.
- Clicking on an figure automatically sets it as the current figure object.
- #raw("saveas"); exports the figure as a PDF page with centered alignment.
- Default color of grid for axes.
- Default figure size updated.
- Default #raw("MarkerFaceColor"); value for compatibility.
- view function returns azimuth and elevation values.
- Camera view reworked.
- Minimal screen resolution supported 800x600.

=== Fixed


- Change directory with file browser line editor did not work as expected.
- Template to create a function with file browser was wrong.
- Do not allow to select multiple variable in workspace browser.
- File browser checks if files with the extension ".m" have a valid name before enable 'run' context menu.
- Paste in editor with multiple tab.
- Starting the Nelson desktop was taking longer than necessary.

== 1.1.0 (2024-01-29)


=== Added


- Nelson Desktop environment: file browser, command history, workspace browser, desktop layout.
- #link("https://github.com/nelson-lang/nelson/issues/1074")[\#1074]; Roadmap v2.0.0
- #link("https://github.com/nelson-lang/nelson/issues/1044")[\#1044];: LU matrix factorization.
- #link("https://github.com/nelson-lang/nelson/issues/1080")[\#1080]; #raw("LineStyle");, #raw("LineWidth"); properties were not implemented for surface objects.
- #raw("sky");, #raw("abyss"); colormaps.

== 1.0.0 (2024-01-04)


Nelson 1.0.0 has been released.

Nelson is an interactive, fully functional environment for engineering and scientific applications. It implements a matrix-driven language (which is largely compatible with MATLAB and GNU Octave), with advanced features such as 2-D 3-D plotting, image manipulation and viewing, a codeless interface to external C/C++/FORTRAN libraries, native support for various C types, and a host of other features.

=== Features


- Types managed by Nelson:

  - double and double complex: scalar, vector, matrix 2D, N dimensions array, sparse matrix.
  - single and single complex: scalar, vector, matrix 2D, N dimensions array, sparse matrix.
  - logical: scalar, vector, matrix 2D, N dimensions array, sparse matrix.
  - character array (UNICODE supported).
  - string array (UNICODE supported).
  - integers 8, 16, 32, 64 signed and unsigned: scalar, vector, matrix 2D, N dimensions array.
  - handle objects.
  - anonymous functions,
  - all types can be overloaded.

- #raw("OpenMP"); and #raw("SIMD"); extensions used.

- 2D and 3D plotting with high-level plot commands.

- Parallel Computing Module.

- Fast Fourrier Transformation functions based on FFTW and MKL wrapper.

- SLICOT (Subroutine Library in Systems and Control Theory) interfaces (optional).

- Control System module.

- Message Passing Interface (MPI): functions for parallel computing.

- JSON decode/encode data support.

- HDF5 high-level functions I/O,

- HDF5 used as default data file format (.nh5) load/save workspace,

- MAT-file compatible load/save workspace,

- Foreign Function Interface C/Fortran.

- Interfacing C/C++ or Fortran with Nelson (build and load external code on the fly).

- MEX C API compatibility.

- Nelson Engine API for C (compatible with MEX Engine). Call Nelson from your C code as engine.

- RESTful API web service.

- Inter-process communication between Nelson's process.

- The QML engine enables nelson programs to display and manipulate graphical content using Qt's QML framework.

- Component Object Model (COM) client interface: binary-interface standard for software components on Windows.

- Write/Read xlsx files on Windows using COM.

- Embedded Nelson code editor.

- Help engine:

  Generate help files using Nelson dedicated functions.
  View your generated help files as html, markdown, pdf, gitbook or directly in Nelson help viewer.

- Tests engine:

  Validate your algorithm using Nelson dedicated functions.
  Export the test results under the xUnit reports format.

- Profiling and Code coverage tools for Nelson's language:

  Nelson has a built-in profiler that is very useful to profile your code and find out what script or function is taking the most time.

- #link("https://www.npmjs.com/package/nelson-cloud")[Nelson cloud];:
  Instant access to Nelson anywhere from an web browser.

- Module skeleton to extend Nelson available here:

  - #link("https://github.com/nelson-lang/module_skeleton")[template macros and builtin];,
  - #link("https://github.com/nelson-lang/module_skeleton_basic")[basic template macros only];.

- Nelson Modules Manager (nmm) : package manager for Nelson

== Previous changelog


#nlink(<main:CHANGELOG-0.7.x>)[Changelog v0.7.x];

#nlink(<main:CHANGELOG-0.6.x>)[Changelog v0.6.x];

#nlink(<main:CHANGELOG-0.5.x>)[Changelog v0.5.x];

#nlink(<main:CHANGELOG-0.4.x>)[Changelog v0.4.x];

#nlink(<main:CHANGELOG-0.3.x>)[Changelog v0.3.x];

#nlink(<main:CHANGELOG-0.2.x>)[Changelog v0.2.x];

#nlink(<main:CHANGELOG-0.1.x>)[Changelog v0.1.x];
