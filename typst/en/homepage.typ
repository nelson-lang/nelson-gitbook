#import "nelson_help.typ": *

#align(center)[#image("banner_homepage.png")]


= Nelson 2.0.0 <main:homepage>


#strong[Nelson 2.0 is a major release.]; It includes a faster language engine based on bytecode, object-oriented programming with #raw("classdef");, NFlow (a visual block diagram editor with simulation and C/Rust code generation), a preview of the web desktop (including a WebAssembly build that runs in the browser), and many new data types, graphics functions, statistics functions, and developer tools.

The main homepage for Nelson can be found at #link("https://nelson-lang.github.io/nelson-website/")[https:\/\/nelson-lang.github.io/nelson-website/];. The complete list of changes is available in the #nlink(<main:CHANGELOG>)[Changelog v2.x.x];.

== Introduction


Nelson is an open-source numerical computing language for engineering, scientific computing, and education. It provides more than 3,000 functions, native or written in Nelson, covering array computation, linear algebra, signal processing, data analysis, visualization, and external language interfaces.

Nelson follows the array-oriented conventions used by established numerical computing environments and GNU Octave, while keeping its own module system, file formats, engine interfaces, and execution model.

== What's New in Nelson 2.0


=== Language Engine


- #strong[Bytecode virtual machine];: code is compiled to bytecode instead of being interpreted line by line. Loops and recursive functions run much faster.
- #strong[Project structure];: packages, #raw("import");, nested functions, local functions in scripts, and #raw("localfunctions");.
- #strong[Argument validation];: #raw("arguments"); blocks with #raw("Repeating"); sections, name-value arguments, and N-D size specifications, plus #raw("validateattributes");, #raw("validatestring");, and #raw("inputParser");.
- #strong[Shorter expressions];: a call can be followed directly by field access or indexing, for example #raw("f().Field");, #raw("f()(1)");, #raw("f(){1}");.
- #strong[Stricter syntax];: #raw("end"); is required to close blocks, and a mismatch between a file name and its function name is reported as an error.
- #strong[Faster functions];: #raw("diff");, #raw("interp1");, #raw("interp2");, #raw("interp3");, #raw("filter");, and #raw("upfirdn"); are now implemented in C++, and binary operators support compatible-size implicit expansion on N-D, sparse, and empty arrays.

=== Object-Oriented Programming with #raw("classdef");


- #strong[Value and handle classes]; with single and multiple inheritance, packages, abstract and sealed members, static members, constants, enumerations, and an event/listener system.
- #strong[Property validation]; with type checks and validation rules, plus #raw("Dependent");, #raw("Observable");, #raw("Transient");, #raw("AbortSet");, and #raw("SetAccess = immutable");.
- #strong[Dynamic properties]; (#raw("addprop");/#raw("rmprop");), weak handles, and mixin base classes (#raw("nelson.mixin.SetGet");, #raw("Heterogeneous");, #raw("Copyable");, #raw("CustomDisplay");).
- #strong[Custom indexing and object arrays];: build containers or proxy objects, index and concatenate object arrays, and subclass built-in numeric, logical, and char types.
- #strong[Introspection and persistence];: #raw("metaclass"); and #raw("?ClassName"); return typed metadata, and custom objects can be saved and reloaded without loss.

=== NFlow: Visual Block Diagram Editor (1.0.0-beta.1)


- #strong[Diagram editor];: drag and connect blocks; wires are routed automatically. Diagrams are saved as plain text files that work with any version control system.
- #strong[Block library];: sources, math, continuous and discrete dynamics, logic, lookup tables, buses, data stores, and sinks. All blocks accept vector, matrix, and typed signals.
- #strong[Acausal physical modeling];: electrical, translational, rotational, thermal, and planar 2-D multibody components connected through physical pins, solved as a differential-algebraic system.
- #strong[Conditional and iterated subsystems];: enabled, triggered, resettable, action, if/switch-case, function-call, for-each, and For/While iterator subsystems.
- #strong[Simulation];: fixed-step and adaptive solvers, an optional CVODES/IDAS backend for stiff systems, zero-crossing localization, algebraic-loop solving, and multi-rate sample times; #raw("sim()");, #raw("linmod");, and #raw("trim"); run models from scripts.
- #strong[Code generation and FMI];: standalone C or Rust generation from the same diagram, FMI 2.0/3.0 import, FMI 3.0 Co-Simulation export, and SSP import/export.
- #strong[Scripted model API];: #raw("new_system");, #raw("add_block");, #raw("add_line");, #raw("get_param");/#raw("set_param");, #raw("find_system");, and related helpers; changes made from scripts appear immediately in the editor.

=== Web Desktop and Browser Interface (preview)


- #strong[The whole desktop in a browser];: Command Window, Workspace browser, Command History, file browser, Variable Editor, code editor, and figures in dockable panels with light and dark themes.
- #strong[Two ways to run it];: the #raw("nelson-webview"); launcher opens a native webview window by default, or serves the same desktop over HTTP with #raw("--web");.
- #strong[Code editor];: an editor based on Monaco, with autocompletion, hover help, Run Section for #raw("%%"); blocks, live debugging, and a Problems panel with quick fixes.
- #strong[Figures and user interfaces without Qt];: a display-list renderer with WebGL2 for 3-D, interactive rotation, pan and zoom, #raw("uicontrol"); and ui components as HTML widgets, and standard dialogs as modals.
- #strong[Other panels];: profiler, documentation browser, system terminal, import data dialog, examples gallery, and package manager.
- #strong[WebAssembly build];: Nelson also compiles to WebAssembly. The same web desktop then runs entirely in the browser, with no server and no installation, and the engine can be used from Node.js. This build is single-threaded and excludes native extensions, process creation, and code generation; #raw("iswasm"); reports the platform.

=== New Data Types


- #strong[Dates and times];: #raw("datetime");, #raw("duration");, and #raw("calendarDuration"); with calendar-aware arithmetic, time zones and daylight saving time, and #raw("NaT"); missing values.
- #strong[Tables, timetables, and time series];: SQL-style joins, pivoting, grouped summaries, missing-data handling, #raw("timetable"); with #raw("retime"); and synchronization, #raw("timeseries");, and direct math on tabular data with unit propagation.
- #strong[Categorical arrays];: a native #raw("categorical"); type with full category management, ordinal categories, set operations, and table integration.
- #strong[Text functions];: #raw("compose");, #raw("extractBetween");, #raw("insertAfter");, #raw("pad");, #raw("split");, #raw("strjoin");, and related functions, plus #raw("nelson.lang.makeValidName"); and #raw("makeUniqueStrings");.
- #strong[Sparse matrices];: #raw("single"); and single-complex support, iterative solvers (#raw("gmres");, #raw("pcg");, #raw("bicgstab");, #raw("lsqr");, and more) with preconditioners, #raw("ilu");/#raw("ichol");, and #raw("eigs");/#raw("svds"); for sparse single inputs.

=== Numerical Methods


- #strong[ODE and DAE solvers];: a common #raw("ode_solvers"); interface, an optional SUNDIALS backend, automatic stiff/non-stiff switching, delay differential equations, sensitivity analysis, and sparse Jacobians.
- #strong[Optimization];: linear, mixed-integer linear, quadratic, nonlinear, least-squares, and problem-based workflows; #raw("fsolve");, #raw("lsqnonlin");, and #raw("fmincon"); implement the standard algorithm families and output structures.
- #strong[Statistics];: descriptive statistics, distribution fitting for more than fifteen families, correlation and regression (linear, generalized linear, robust, ridge, lasso), hypothesis tests, clustering (#raw("kmeans");, #raw("kmedoids");, hierarchical, spectral, Gaussian mixtures), and classification models with #raw("predict");.
- #strong[Image processing];: 2-D and 3-D functions for color conversions, filtering, edge detection, morphology, connected components and region measurements, geometric transforms, registration, segmentation, and feature detection. The heavy operations are parallelized with OpenMP.

=== Graphics and User Interfaces


- #strong[New chart types];: pie and donut charts, bubble charts, polar plots, box plots, volume visualization (#raw("isosurface");), figure annotations, and surface lighting (#raw("light");, #raw("camlight");, #raw("material");, #raw("shading");, #raw("fsurf");).
- #strong[Graphics object utilities];: #raw("gobjects");, #raw("gco");, #raw("gcbo");, #raw("gcbf");, #raw("allchild");, #raw("findall");, #raw("findfigs");, #raw("copyobj");, #raw("reset");, and many more properties on all graphics objects.
- #strong[App components for #raw("uifigure");];: panels, button groups, tab groups, grid layouts, check boxes, radio and toggle buttons, dropdowns, list boxes, edit fields, spinners, sliders, knobs, gauges, lamps, switches, date pickers, #raw("uitable");, #raw("uitree");, and #raw("uiaxes");.
- #strong[More predictable rendering];: aligned figure geometry, camera-space lighting, batched line rendering for dense 3-D scenes, and native paths for #raw("patch");, #raw("fill");, #raw("fill3");, and #raw("area");.

=== Interoperability and AI


- #strong[File formats];: Open XML #raw(".xlsx"); read/write on every platform, an optional #raw("netcdf"); module, optional Parquet support, and XML document APIs (#raw("xmlread");, #raw("xmlwrite");, #raw("xslt");, #raw("readstruct");, #raw("writestruct");).
- #strong[Python];: the #raw("nelson"); Python package drives a Nelson session from Python, NumPy arrays and pandas DataFrames convert in both directions, and #raw("pyfunction"); lets Python code call back into Nelson.
- #strong[Embedding];: a new C/C++ API embeds a full Nelson interpreter inside other applications.
- #strong[AI assistants];: an MCP server is built in, so AI assistants and agents can call Nelson directly.

=== Code Quality, Testing, and Packaging


- #strong[Static analysis];: #raw("checkcode"); and #raw("codeIssues"); detect complexity, unused variables and imports, shadowing, unreachable code, and style problems, with inline editor diagnostics and one-click fixes.
- #strong[Command-line tools];: #raw("nelson-lint"); for CI/CD (SARIF, JSON, plain text) and #raw("nelson-lsp");, a language server with live diagnostics, formatting, hover, and quick fixes.
- #strong[Testing];: the #raw("nelson.unittest"); runner with HTML, JSON, JUnit XML, and TAP13 reports, the #raw("mocking"); module (#raw("nelson.mock");), and a method-style #raw("asserts.*"); assertion API.
- #strong[Package manager];: #raw("nmm"); adds registry search, recursive dependency resolution with semantic-version constraints, lockfiles with SHA-256 checksums, Ed25519-signed registries, transactional installs with rollback, and publishing workflows.
- #strong[Faster startup];: dynamic libraries are loaded on first use, thanks to a cache of gateway descriptors.

== Core Features


=== Data Types


- #strong[Double, single, and complex];: scalars, vectors, 2-D matrices, N-dimensional arrays, and sparse matrices.
- #strong[Logical and integers];: 8, 16, 32, and 64-bit signed and unsigned types.
- #strong[Character and string arrays]; with full UNICODE support.
- #strong[Structures, cells, dictionaries, tables, timetables, categorical arrays, dates and durations];.
- #strong[Handle objects, #raw("classdef"); classes, and anonymous functions];; all types can be overloaded.

=== Performance


- #strong[OpenMP and SIMD]; parallel processing and vectorization.
- #strong[Parallel computing]; on multi-core processors, #strong[MPI]; for distributed computing, and an optional #strong[#raw("gpu_engine");]; module for GPU compute through WebGPU.
- #strong[High-performance FFT]; based on FFTW and MKL.

=== Visualization and Interface


- #strong[2-D and 3-D plotting]; with high-level commands and two rendering backends (Qt and web).
- #strong[User interface controls]; and #raw("uifigure"); components for building custom applications.
- #strong[Desktop environment]; with command history, file explorer, workspace browser, variable editor, embedded code editor, and terminal panel.

=== Scientific Modules


- #strong[Control system]; tools and the optional #strong[SLICOT]; interface.
- #strong[Signal processing];, #strong[polynomials];, #strong[geometry];, #strong[special functions];, #strong[symbolic]; computation, #strong[image processing];, #strong[statistics];, #strong[optimization];, and #strong[ODE solvers];.

=== Data Formats and Interfacing


- #strong[JSON, XML, HDF5]; (default #raw(".nh5"); workspace format), #strong[MAT-file];, #strong[#raw(".xlsx");];, #strong[NetCDF];, and #strong[Parquet];.
- #strong[Foreign Function Interface (FFI)];: build and load C/Fortran code on the fly.
- #strong[MEX C API]; and #strong[Nelson Engine API]; compatibility.
- #strong[Julia]; and #strong[Python]; interfacing, #strong[RESTful API];, #strong[inter-process communication];, #strong[QML engine];, and #strong[COM]; components on Windows.

=== Help, Testing, and Profiling


- #strong[Help engine]; generating HTML, Markdown, PDF, or GitBook documentation.
- #strong[Test engine]; with xUnit, JUnit, TAP13, and HTML report export.
- #strong[Profiler]; and #strong[code coverage]; tools.

== Resources


- #strong[Website];: #link("https://nelson-lang.github.io/nelson-website/")[https:\/\/nelson-lang.github.io/nelson-website/];
- #strong[Source code and issues];: #link("https://github.com/nelson-lang/nelson")[https:\/\/github.com/nelson-lang/nelson];
- #strong[Nelson Cloud];: use Nelson from a web browser with #link("https://www.npmjs.com/package/nelson-cloud")[Nelson Cloud];.
- #strong[Nelson Modules Manager (nmm)];: install and manage extensions for Nelson.
- #strong[Module skeletons]; to extend Nelson:
  - #link("https://github.com/nelson-lang/module_skeleton")[Template with Macros and Builtins];.
  - #link("https://github.com/nelson-lang/module_skeleton_basic")[Basic Macros Template];.

---

== Changelogs


- #nlink(<main:CHANGELOG>)[Changelog v2.x.x];
- #nlink(<main:CHANGELOG-1.x.x>)[Changelog v1.x.x];
- #nlink(<main:CHANGELOG-0.7.x>)[Changelog v0.7.x];
- #nlink(<main:CHANGELOG-0.6.x>)[Changelog v0.6.x];
- #nlink(<main:CHANGELOG-0.5.x>)[Changelog v0.5.x];
- #nlink(<main:CHANGELOG-0.4.x>)[Changelog v0.4.x];
- #nlink(<main:CHANGELOG-0.3.x>)[Changelog v0.3.x];
- #nlink(<main:CHANGELOG-0.2.x>)[Changelog v0.2.x];
- #nlink(<main:CHANGELOG-0.1.x>)[Changelog v0.1.x];

---

== License


- #nlink(<main:license>)[Nelson license];
