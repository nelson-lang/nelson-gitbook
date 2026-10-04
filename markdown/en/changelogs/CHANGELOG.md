# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## 2.0.0 - (UNRELEASED)

### Overview

Nelson 2.0 is a major release. It includes a faster language engine based on bytecode, object-oriented programming with `classdef`, NFlow (a visual block diagram editor with simulation and C/Rust code generation, first release 1.0.0-beta.1), a preview of the web desktop (including a WebAssembly build that runs in the browser), and many new data types, graphics functions, statistics functions, and developer tools.

Existing scripts run faster. Larger projects can use packages, imports, nested and local functions, argument validation, and classes. Data analysis gains dates, tables, timetables, and categorical arrays.

### Highlights

- Run existing scripts faster, especially loop-heavy and recursive code.
- Organize larger projects with classes, packages, imports, validation blocks, and local helpers.
- Work with dates, tables, categorical arrays, spreadsheets, and more file formats.
- Design and simulate systems visually with NFlow, then generate C or Rust from the same diagram.
- Use the web desktop (preview) to get the Command Window, editor, variables, and figures in a browser or in a lightweight native window, or run Nelson entirely in the browser with the WebAssembly build.
- Catch coding issues earlier with the built-in static analyzer, inline editor diagnostics, and the command-line linter.

### Added

#### Language engine

- New parser and bytecode virtual machine: code is compiled instead of being interpreted line by line, and loops and recursive functions run much faster.
- Packages and `import`, nested functions, local functions in scripts, and `localfunctions`.
- `arguments` validation blocks (including `Repeating` and name-value arguments), plus `validateattributes`, `validatestring`, and `inputParser`.
- A function call can be followed directly by field access or indexing: `f().Field`, `f()(1)`, `f(){1}`.
- Thread-safe parsing.

#### Object-oriented programming (`classdef`)

- Value and handle classes with single and multiple inheritance, abstract and sealed members, static members, constants, enumerations, and events/listeners.
- Property type checking and validation, with `Dependent`, `Observable`, `Transient`, `AbortSet`, and `SetAccess = immutable`.
- Dynamic properties, weak handles, and the `nelson.mixin.*` base classes (`SetGet`, `Heterogeneous`, `Copyable`, `CustomDisplay`).
- Custom indexing, object arrays, and subclassing of built-in numeric, logical, and char types.
- `metaclass` and `?ClassName` introspection, and save/load of custom objects.

#### NFlow: visual block diagram editor (1.0.0-beta.1)

- Diagram editor with automatic wire routing; diagrams are saved as plain text files that work with version control.
- Block library (sources, math, continuous and discrete dynamics, logic, lookup tables, buses, data stores, sinks) with vector, matrix, and typed signals.
- Acausal physical modeling: electrical, translational, rotational, thermal, and planar 2-D multibody components solved as a differential-algebraic system.
- Conditional subsystems (enabled, triggered, resettable, action, if/switch-case), function-call networks, for-each and For/While iterator subsystems.
- Simulation with fixed-step and adaptive solvers, an optional CVODES/IDAS backend, zero-crossing localization, algebraic-loop solving, and multi-rate sample times; `sim()`, `linmod`, and `trim` run models from scripts.
- Standalone C or Rust code generation, FMI 2.0/3.0 import, FMI 3.0 Co-Simulation export, and SSP import/export.
- Scripted model API (`new_system`, `add_block`, `add_line`, `get_param`/`set_param`, `find_system`) changes made from scripts appear immediately in the editor.

#### Web desktop and browser interface (preview)

- Full desktop in a browser or a native webview window: Command Window, Workspace, History, file browser, Variable Editor, code editor, and figures in dockable panels with light and dark themes.
- `nelson-webview` launcher (native window by default, `--web` to serve over HTTP); `getwebmode` and `getweburl` query the active mode.
- Code editor based on Monaco, with autocompletion, hover help, Run Section, live debugging, and a Problems panel with quick fixes.
- Figures rendered without Qt (WebGL2 for 3-D) with interactive rotation, pan, and zoom; `uicontrol`, ui components, and standard dialogs work as HTML widgets and modals.
- Profiler, documentation browser, system terminal, import data dialog, examples gallery, and package manager docked as panels.
- WebAssembly build: the same web desktop runs entirely in the browser with no server, and the engine runs in Node.js; `iswasm` reports the platform. This build is single-threaded and excludes native extensions, process creation, and code generation.

#### Data types

- `datetime`, `duration`, and `calendarDuration` with calendar-aware arithmetic, time zones, daylight saving time, and `NaT`.
- Tables: SQL-style joins, pivoting, variable splitting and merging, set operations on rows, missing-data handling, and grouped summaries.
- New `timetable` (sorting, `retime`, synchronization, time-range queries) and `timeseries` types; direct math on `table`, `timetable`, and `eventtable` with unit propagation.
- New native `categorical` array type, including ordinal categories and table integration.
- New text functions (`compose`, `extractBetween`, `insertAfter`, `pad`, `split`, `strjoin`, and more) and `nelson.lang.makeValidName` / `makeUniqueStrings`.
- Sparse matrices: `single` and single-complex support, iterative solvers (`gmres`, `pcg`, `bicgstab`, `lsqr`, `minres`, and more), `ilu`/`ichol` for single precision, and `eigs`/`svds` for sparse single inputs.
- Moving-window statistics (the `mov*` family), cumulative extrema, `bounds`, `mode`, `expm1`, `reallog`, and `realsqrt`.

#### Numerical methods

- ODE/DAE: a common `ode_solvers` interface, an optional SUNDIALS backend, automatic stiff/non-stiff switching, delay differential equations, sensitivity analysis, and sparse Jacobians.
- Optimization: linear, mixed-integer linear, quadratic, nonlinear, least-squares, and problem-based workflows; `fsolve`, `lsqnonlin`, and `fmincon` with the standard algorithm families and output structures.
- Statistics: descriptive statistics, distribution fitting for more than fifteen families, correlation and regression (linear, generalized linear, robust, ridge, lasso), hypothesis tests, clustering, classification models with `predict`, and outlier handling.
- Image processing: 2-D and 3-D color conversions, filtering, edge detection, morphology, connected components and region measurements, geometric transforms, registration, segmentation, and feature detection.

#### Graphics and user interfaces

- New chart types: pie and donut, bubble, polar, box plots, volume visualization (`isosurface`), figure annotations, and surface lighting (`light`, `camlight`, `material`, `shading`, `fsurf`).
- Graphics object utilities (`gobjects`, `gco`, `gcbo`, `gcbf`, `allchild`, `findall`, `findfigs`, `copyobj`, `reset`) and many more properties on graphics objects.
- App components for `uifigure`: panels, button groups, tab groups, grid layouts, check boxes, radio and toggle buttons, dropdowns, list boxes, edit fields, spinners, sliders, knobs, gauges, lamps, switches, date pickers, `uitable`, `uitree`, and `uiaxes`.
- More predictable rendering: aligned figure geometry, camera-space lighting, batched line rendering for dense 3-D scenes.

#### Interoperability and AI

- Open XML `.xlsx` read/write on every platform, an optional `netcdf` module, optional Parquet support, and XML document APIs (`xmlread`, `xmlwrite`, `xslt`, `readstruct`, `writestruct`).
- Python: the `nelson` Python package drives a Nelson session from Python; NumPy and pandas convert in both directions; `pyfunction` lets Python code call back into Nelson.
- New C/C++ API for embedding a full Nelson interpreter in other applications.
- MCP server built in, so AI assistants and agents can call Nelson directly.

#### Code quality, testing, and packaging

- Static analyzer (`checkcode`, `codeIssues`) with inline editor diagnostics and one-click fixes; `%#ok` comments exclude individual lines.
- `nelson-lint` command-line linter for CI/CD (SARIF, JSON, plain text) and `nelson-lsp` language server.
- `nelson.unittest` test runner (HTML, JSON, JUnit XML, TAP13 reports, retries, sharding), the `mocking` module (`nelson.mock`), and the method-style `asserts.*` API.
- `nmm` package manager: registry search, recursive dependency resolution with semantic-version constraints, lockfiles with SHA-256 checksums, Ed25519-signed registries, transactional installs with rollback, and publishing workflows.
- `crypto.*` namespace: Ed25519 signatures, SHA-256/SHA-512, HMAC, BLAKE2b, Argon2, secure random bytes, X25519, and XChaCha20-Poly1305 authenticated encryption.
- Faster startup: dynamic libraries are loaded on first use.

#### Desktop

- Terminal panel with multiple shell sessions, collapsible panels, truncated display of large matrices with an expansion link (`format('truncateMatrices', ...)`), and `cprintf` for styled console output.
- Optional `gpu_engine` module providing `gpuArray` device arrays through WebGPU.

### Changed

- `end` is now required to close blocks, and a mismatch between a script's filename and its function name is reported as a clear error.
- `clear` accepts patterns and string names, and `clear classes` properly cleans up class data.
- Binary operators support compatible-size implicit expansion across N-D, sparse, and empty arrays.
- `filter`, `upfirdn`, and string-array `+` use native backends.
- The `nig` module moved out of the core distribution: install the external `ngen` module and use `ngen.gateway(functions, destination)` instead of `nig(functions, destination)`.

### Fixed

- Ctrl+C interrupts running scripts more reliably, including inside loops and recursive calls.
- The desktop stays responsive during long computations, which now run on a background thread.
- `fn.Member.Method(args)` on an object returned by a zero-argument function works when the member name starts with an uppercase letter.
- Character arrays promote consistently in arithmetic and concatenation.
- `Inf(n)` and `NaN(n)` return an `n`-by-`n` matrix, and both accept a class name and a `'like'` prototype.
- `catch ex` followed by an empty block is accepted.
- `jsondecode` no longer leaks memory on JSON arrays.
- Assigning `missing` into part of a numeric or string array keeps the array class; `[missing missing]` builds a `missing` array.
- Python engine: NumPy arrays honour buffer strides (sliced, transposed, and negative-stride views convert correctly), Python exceptions propagate unchanged, and `double(pyObject)`-style casts work after a same-named method call.
- Graphics: `ishandle` checks validity element by element, `findobj` distinguishes visible-handle from all-handle searches, `stem(Y)` uses one-based x-coordinates, `patch` with `FaceColor` `none` renders without a black fill, and axes with empty manual ticks render cleanly.
- `--timeout` is now a hard limit: the process is terminated when graceful shutdown hangs.

### Improved

- `diff`, `interp1`, `interp2`, and `interp3` are now builtins and run 5 to more than 70 times faster on small inputs, with unchanged results.
- HDF5/NH5 save and load support objects from the new class system, including older-style objects.

### Notes for maintainers and packagers

- Dependencies no longer required: Boost, LAPACKE, Qt5 (Qt6 only), the Socket.IO client stack, QtGifImage, and GNU gettext tools.
- New system libraries: HiGHS, Qhull, libpng, libwebp, and stb. New optional libraries: netCDF-C, Apache Arrow/Parquet, Dawn (WebGPU), SUNDIALS, and ARPACK.
- New executables to ship: `nelson-webview`, `nelson-lint`, and `nelson-lsp`; `nelson-sio-cli` is gone.
- Compiled external modules must be regenerated and recompiled: gateways now export `GetGatewayDescriptor`, and the legacy `GetGatewayInfo`/`GetGatewayName` exports were removed.
- `nmm` registries require a `registry.json.sha256` sidecar (local) or an Ed25519 `registry.json.sig` sidecar (remote); `module.json` validation is stricter.
- The core C++ value API (`ArrayOf`, `Dimensions`, handles, exceptions) was renamed to a consistent convention with no compatibility aliases.
- Visual Studio 2026 builds are supported on Windows.

## Previous changelog

[Changelog v1.x.x](CHANGELOG-1.x.x.md)

[Changelog v0.7.x](CHANGELOG-0.7.x.md)

[Changelog v0.6.x](CHANGELOG-0.6.x.md)

[Changelog v0.5.x](CHANGELOG-0.5.x.md)

[Changelog v0.4.x](CHANGELOG-0.4.x.md)

[Changelog v0.3.x](CHANGELOG-0.3.x.md)

[Changelog v0.2.x](CHANGELOG-0.2.x.md)

[Changelog v0.1.x](CHANGELOG-0.1.x.md)
