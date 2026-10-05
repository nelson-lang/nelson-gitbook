# ncc

Package a Nelson application as a native executable.

## 📝 Syntax

- options = ncc('options', entry, name, value, ...)
- options = nelson.compiler.BuildOptions(entry, settings)
- result = ncc(options)
- result = nelson.compiler.build(options)
- plan = nelson.compiler.analyze(options)
- plan = ncc(options, '--explain-link')
- output = ncc(entry, '-o', executable, options...)
- plan = ncc(entry, '--explain-link', options...)
- nelsonc entry.m -o application.exe [-a file] [--gui\|--cli] [--runtime bundled\|installed]
- nelsonc entry.m [ -a file ] [--gui\|--cli] --explain-link
- nelsonc entry.m -o application.exe --help-file help.txt
- nelsonc entry.m -o application.exe [-X\|--no-auto-data] [-a file]
- nelsonc --help

## 📄 Description


<b>ExecutableVersion</b>, or <b>--executable-version version</b> on the command line, sets the native Windows executable version. The default is <b>1.0.0.0</b>. Supply one to four decimal components between 0 and 65535; omitted trailing components become zero in the executable resource, so <b>4.0</b> produces <b>4.0.0.0</b>. FileVersion and ProductVersion contain the same value. The original setting is retained in the options and dependency plan. This setting is only used on Windows; other platforms validate it but leave their executable bytes unchanged. Version resources are written only to the checked staging copy before the archive is appended. The installed launcher and runtime are not modified. Identical inputs and version settings retain deterministic packaging. This option is unrelated to the runtime compatibility fingerprint and adds no application-startup or numerical-loop checks. 

<b>ncc</b> is the public packaging function inside Nelson. The operating-system command remains <b>nelsonc</b>; the command-line examples below are intended for a system terminal. The optional module remains <b>compiler</b>. The former <b>nelsonc.m</b> session macro has been renamed; internal <b>Nelson:nelsonc:\*</b> error identifiers are unchanged. 

<b>ncc('options', entry, ...)</b> loads the optional compiler module and creates a <b>nelson.compiler.BuildOptions</b> value object. Once the module is loaded, its constructor is also directly callable with name-value pairs or a scalar structure. Names are case-insensitive, without abbreviations. Unknown options fail. <b>AppFile</b> is the existing .m entry, supplied as the first argument. <b>ExecutableName</b> defaults to its filename stem, without extension; it must be an identifier and cannot be a reserved Windows device name. <b>OutputDir</b> defaults to ExecutableName followed by <b>standaloneApplication</b>, selected during construction. 

<b>AdditionalFiles</b> defaults to an empty cell array and accepts a file, recursive directory, final-component filename pattern, or vector of names, with the same selection rules as <b>-a</b>. <b>AutoDetectDataFiles</b> defaults to true; false maps to <b>-X</b>. <b>CustomHelpTextFile</b> defaults to empty text and selects the UTF-8 application help document. <b>Mode</b> accepts auto (default), cli or gui. <b>NoConsole</b> defaults to false and selects a Windows-subsystem executable when true; it is Windows-only. <b>RuntimeMode</b> accepts bundled (default) or installed. <b>Verbose</b> defaults to false. Boolean properties accept scalar logical or numeric 0/1 and on/off text. 

Options validate values when assigned. Relative paths become absolute at assignment, without resolving links that the input selector must reject. Later directory changes do not retarget them. This does not freeze file contents, pattern membership or dependencies: analysis and build read their current state. Changing ExecutableName does not update an already selected OutputDir. Copying the value object and changing its properties leaves the original unchanged. <b>struct(options)</b> exposes its settings; reconstruct with the AppFile value as entry and the remaining fields as the settings structure. 

<b>ncc(options)</b> and <b>nelson.compiler.build(options)</b> use the existing packaging pipeline and return a read-only <b>nelson.compiler.BuildResult</b>. With structured options, a build is quiet unless Verbose is true, including when no output is requested. <b>nelson.compiler.analyze(options)</b> and <b>ncc(options, '--explain-link')</b> return the command's dependency plan without creating the output directory. Graphical builds still require an advanced or graphical session. Existing outputs are not overwritten. 

The result's <b>BuildType</b> is standaloneApplication, or standaloneWindowsApplication when NoConsole is true. <b>Files</b> lists the top-level paths to distribute: <b>Executable</b> and, in bundled mode, <b>RuntimeDirectory</b>. The latter is empty in installed mode. <b>Options</b> is a value copy; <b>DependencyPlan</b>, <b>RuntimePlan</b> and <b>Manifest</b> describe the completed build; <b>SHA256</b> is the executable digest. RuntimePlan describes runtime requirements and, in bundled mode, the frozen copy inventory. These are build-time records, not live views. <b>struct(result)</b> converts Options to a plain structure too and can be JSON encoded. Reports can contain absolute build-host paths and are not sanitized deployment manifests. The structured API is build-only and adds no application-startup or numerical-loop checks. 

<b>-X</b> and <b>--no-auto-data</b> disable automatic inclusion of literal data filenames in recognized input-reading calls, including command-form calls and transitive source dependencies. The default remains enabled. The plan records <b>autoDetectDataFiles</b>; skipped automatic references have <b>ignored-data</b> edges and do not generate missing-file diagnostics. Explicit <b>-a</b> files and <b>%#function</b> inclusions remain active, with <b>-a</b> still taking precedence over <b>%#exclude</b>. 

Function and script dependencies, class methods and literal <b>dlopen</b> libraries are preserved by this option. Missing code and native dependencies still fail. Runtime-bootstrap analysis and required runtime resources are unchanged. File accesses are not rewritten: skipped data must be supplied at execution time, for example in the invocation directory. The option works from the native command and the Nelson function, with either runtime mode and custom application help, and adds no runtime checks. 

<b>%#function callback\_helper package.extra "included data.txt"</b> includes functions, local definitions, class constructors and files without requiring a detected call. Relative files are searched beside the source, then in the current directory, user path and active Nelson path order. Quote names containing spaces; double a matching quote inside a quoted name. Standalone and inline directive comments are supported. Quoted program text, ordinary comments, block comments and continuation-line comments are ignored. A missing inclusion is reported with its source line. 

<b>%#exclude development\_only "ignored.txt"</b> excludes named dependencies and suppresses their missing-reference diagnostics. Discovered exclusions apply across the application closure, including conservative dynamic fallback. Late exclusions remove otherwise unreachable transitive dependencies. The entry and explicit <b>-a</b> inputs override exclusions. The <b>exclusions</b> records in <b>--explain-link</b> include source, name, line, resolved target and <b>explicitOverride</b>; excluded edges preserve <b>referenceKind</b>. 

Exclusion does not delete executable statements or individual functions from a retained file. Guard development-only calls with <b>if ~isdeployed()</b>; executing an excluded dependency can fail. An exclusion does not prune individual files from a complete runtime module required for other reasons. Other dynamic dependencies still use conservative fallback. Use <b>-X</b> to disable automatic data discovery globally. Directive handling occurs only during packaging and adds no application-startup or numerical-loop checks. 

<b>--help-file</b> embeds a UTF-8 document of at most 1 MiB. Invalid UTF-8 and null characters are rejected; an optional byte-order mark is removed. An empty document is valid. Its content is read once during packaging, without embedding the original filename. Calling the application with a single <b>-?</b>, <b>/?</b> or <b>--help</b> argument prints this text and exits successfully without executing the entry or waiting for application windows. A compatible runtime is still needed and initialized. Other argument lists are preserved. Without this build option, all arguments are forwarded unchanged. <b>nelsonc --help</b> and <b>nelsonc -h</b> remain compiler help commands. With <b>--explain-link</b>, the document is validated and its content appears in the plan's <b>helpText</b> field. 

<b>isdeployed()</b> is true while application code and its graphical callbacks run. <b>ctfroot()</b> returns the temporary extraction root containing <b>application.json</b> and the <b>roots</b> subdirectories. Locate packaged resources relative to their original file with <b>mfilename('fullpath')</b>; do not use the extraction root for persistent output. In an ordinary session, isdeployed is false and ctfroot raises an error. These runtime queries do not require the optional build module. 

The command and installed-runtime launcher recognize CMake installation prefixes as well as flat build directories. Configured data, library and executable directories are stored relative to the installation prefix; absolute directories within that prefix are converted, and directories outside it are rejected for the compiler tools. <b>NELSONC\_RUNTIME\_ROOT</b> accepts the installation prefix or its Nelson data directory. Automatic lookup uses the matching executable directory from <b>NELSON\_RUNTIME\_PATH</b> or <b>PATH</b>, including configured nested directories. Data and libraries must belong to the same layout. The interpreter fingerprint check is unchanged. The bundled Windows runtime always uses <b>bin/x64</b> or <b>bin/ARM64</b>, independently of the source installation's directory names. 

The optional <b>compiler</b> module requires <b>file\_archiver</b>, <b>dynamic\_link</b> and <b>json</b>. It is a separate Windows installer component, included in full installations and omitted in minimal installations. A build can exclude it with CMake <b>-DWITHOUT\_COMPILER\_MODULE=ON</b>, or omit its Visual Studio CLI project references with <b>/p:WithoutCompilerModule=true</b>. ISCC <b>/DWITHOUT\_COMPILER\_MODULE</b> excludes the component from an installer build. The public function reports a missing-module error when compiler is not installed. Already packaged applications do not require this build module. 

Inside Nelson, call <b>ncc('entry.m', '-o', 'application.exe')</b>. The public function is a macro that loads the optional <b>compiler</b> module on first use and calls its native analysis builtin, without starting another Nelson process. Ordinary session startup does not load this build module. It is excluded from generated runtimes, including dynamic fallback; deployed applications cannot depend on its build services. 

In the command-style function form, arguments must be character vectors or scalar strings and use the command-line options below. Relative paths use the session's current directory. A single output returns the executable path, a plan structure with <b>--explain-link</b>, or usage text with <b>--help</b>. With no output, the result is printed. Errors propagate to the caller; the session continues, and its current directory and environment are preserved. The build module remains loaded. Analysis uses the session's loaded catalogue: use an advanced or graphical session to package graphical functions. 

<b>nelsonc</b> is an experimental command-line application packager. It combines a precompiled native launcher with application bytecode, resources and a manifest. It does not translate arbitrary Nelson code into standalone machine code. 

By default (<b>--runtime bundled</b>), the result consists of the executable and an adjacent directory named after its output stem, such as <b>application.runtime</b>. Distribute and move both together. The target machine does not need a separate Nelson installation when the required runtime dependencies are included. 

<b>--runtime installed</b> creates the executable with application bytecode and resources but does not copy a runtime. The target needs a compatible Nelson installation. Set <b>NELSONC\_RUNTIME\_ROOT</b> to its absolute root to select it explicitly. A missing or incompatible explicit selection fails without fallback. Otherwise the launcher checks the adjacent application.runtime directory, then <b>NELSON\_RUNTIME\_PATH</b>, shared runtime registrations, standard shared directories on Windows, and finally absolute <b>PATH</b> entries. An existing incompatible adjacent runtime fails without fallback. Empty and relative search entries are ignored. The build-host installation path is not embedded. 

Linux shared registrations are read from <b>XDG\_CONFIG\_HOME</b>, falling back to <b>HOME/.config</b>, followed by <b>XDG\_CONFIG\_DIRS</b> (default <b>/etc/xdg</b>). Configuration directories must be absolute; relative entries are ignored. Only the first 16 system-directory entries are considered. A registration is named <b>nelson/runtimes/architecture/fingerprint.root</b> relative to a configuration directory, where fingerprint is the interpreter SHA-256. It is an ordinary file containing exactly two LF-terminated lines: <b>NELSON\_RUNTIME\_ROOT\_1</b> and the absolute runtime root. No BOM, control characters, shell expansion or relative root is accepted. Records larger than 32768 bytes, symbolic-link records and special files are ignored. Directory symlinks retain their normal filesystem meaning. 

The first compatible registered runtime is selected, with user configuration preceding system configuration. The interpreter fingerprint is still verified; a registration is not a publisher signature. Discovery does not change PATH, configuration files or numerical execution. Rebuild applications with current launchers to use Linux registration discovery (runtimeDiscoveryVersion 3). Use [compiler.runtime.customInstaller](../compiler/compiler.runtime.customInstaller.md) to package, install and update a minimal shared runtime; discovery itself does not install files. 

Installed mode requires the exact interpreter build and architecture, not merely the same version number. The interpreter fingerprint is checked before loading the engine, followed by the existing manifest and builtin checks. Discovery and fingerprinting run only at startup. A full installation may load more startup modules than a reduced runtime. The launcher does not modify the selected installation; application code retains its ordinary file-access capabilities. 

Application <b>.nbc</b> files are internal bytecode entries in the application archive, embedded in the executable by default, not separate files to distribute. The runtime libraries remain outside the executable. Class definitions and cases requiring source representation can retain <b>.m</b> files inside the archive. Packaging is not encryption or a source-confidentiality guarantee. 

Class dependency analysis follows superclasses, methods, local functions, property defaults, property types and validators without instantiating the class. Retained classes include their external methods and private dependencies; external methods can be embedded as bytecode. A missing external implementation is reported during packaging, while abstract method declarations do not require a separate file. Qualified static references and function-form method calls are supported conservatively, without type inference. Class use alone does not require project-wide dynamic fallback. Old-style constructors in <b>@Class</b> directories and their methods can all be embedded as bytecode. 

The entry may be a script or a function, including a function in nested package directories. Function arguments are command-line strings; a function can receive them using <b>varargin</b>. A script reads them using <b>argv('user')</b>. Empty arguments and quoted arguments are preserved. Uncaught application errors produce a failing exit status, and an explicit exit status is propagated. 

<b>-o</b> specifies the output executable. On Windows its extension must be <b>.exe</b>. Existing executables or runtime directories are not overwritten. Paths on the command line are resolved relative to the directory from which the compiler was invoked. 

On Windows, the ordinary CLI, advanced CLI, GUI and WebView launchers declare the same long-path capability as the standalone packager. In-session packaging can copy nested runtime files beyond MAX\_PATH when the host's <b>LongPathsEnabled</b> policy is enabled. Nelson does not change that system policy. Component-length limits and restrictions of external tools and APIs still apply. 

Qualified static calls compiled before their class is available still enforce method access rules after the class is loaded or constructed. A warmed function cache must not expose private or protected methods to external callers. Public calls and authorized calls within the class remain valid. These are language access rules, not a security sandbox for untrusted code. 

<b>-a input</b> explicitly includes a file, a recursive directory tree or a filename pattern, and may be repeated. Patterns accept <b>\*</b> and <b>?</b> only in the final path component; they select files in that directory without descending into subdirectories. Quote patterns in the shell. Other characters are literal; an existing literal filename takes precedence. Matching ignores case on Windows and respects it elsewhere. 

Selected trees, including empty folders, retain their relative layout inside <b>roots/N</b>. Selecting an ancestor of the entry preserves paths between code and sibling resources. Ordinary included folders are searchable; package, class and private directories keep their language-specific rules. Use <b>which('data.txt')</b> or a path relative to <b>mfilename('fullpath')</b>. Packaging does not rewrite file accesses or reproduce absolute build-host paths. 

Explicit selections override <b>%#exclude</b> and remain included with <b>-X</b>. Duplicates are removed. Missing inputs, unmatched patterns, symbolic links, directory reparse points and non-regular files are rejected. Selection is limited to 10,000 files and folders. Membership is frozen during analysis; selected bytes are verified during staging. The plan records <b>directories</b> and ordered <b>pathEntries</b> separately from physical <b>searchRoots</b>. Enumeration and matching run only during packaging. Larger payloads and extra search paths can still increase startup and ordinary lookup costs. 

Statically resolved function dependencies and recognized literal input filenames are included automatically. Computed filenames and resources supplied only at runtime cannot generally be inferred. 

<b>--explain-link</b> prints the dependency and runtime plan as JSON without creating an application. Its <b>complete</b> field describes resolution of analyzed references, not proof that every dynamic execution path or deployment dependency is covered. 

Dynamic calls and path changes broaden the dependency plan conservatively. Such applications may require substantially more runtime modules. Native extensions and dynamically loaded external libraries require additional deployment validation. 

Graphical startup is selected automatically from resolved module dependencies. <b>--gui</b> forces it; <b>--cli</b> restricts the compiler to the basic catalogue and rejects unresolved graphical dependencies. The options are mutually exclusive. By default, the compiler uses the advanced catalogue for analysis, but a generated numerical application still uses the basic runtime. Dynamic fallback may conservatively include graphical modules. 

After a graphical entry returns, the launcher continues processing events while visible figures remain, including figures with <b>HandleVisibility</b> set to <b>off</b>. Timers and <b>uicontrol</b> callbacks can hide, close or replace windows. Invisible figures alone do not keep the executable running. The current graphical target is ordinary Qt figures on Windows x64, with bundled or installed runtime. QML-only window lifetime, WebView deployment, the full UI control matrix and graphical deployment on other platforms remain unvalidated. Executables use the host platform's native format; cross-compilation is not supported. 

The current timer implementation requires an explicit reference to survive the return of the function that created it. For a graphical application, retain that timer in <b>figure.UserData</b> or another persistent owner. This runtime limitation is independent of packaging. 

Textual callback properties and indeterminate callback values activate conservative dependency inclusion for supported graphical, timer, audio and handle builtins. Direct callback-property assignments are also inspected. Literal function handles, handle-first callback cells and empty callbacks do not themselves activate this fallback. Computed property names are treated conservatively unless analysis can prove a non-callback suffix. Text callbacks can therefore enlarge the runtime; prefer explicit handles when the target is known. Arbitrary method dispatch and native-generated callback names still require explicit inputs and deployment testing. 

The application starts in the directory from which its executable was invoked. Relative input and output paths refer to that directory, and output files survive extraction cleanup. The application may change its working directory explicitly; a script entry does not change it implicitly. 

Embedded files are extracted into a private temporary directory. To locate a resource stored beside a function, use <b>fullfile(fileparts(mfilename('fullpath')), 'data.txt')</b> and include the computed resource explicitly with <b>-a</b>. Inclusion does not rewrite file-access expressions. Do not use the extraction directory for persistent output. 

The launcher ignores the implicit current-directory and personal user-path source indexes. Unrelated local source files must not replace packaged code. Directories explicitly added by the application remain searchable. The interpreter's ordinary search configuration is not changed outside the deployed process, and user-path preferences are not rewritten. 

Bytecode compatibility is checked against the matching runtime. Keep the executable with the runtime produced by the same build. Archive checks detect corruption and invalid paths; they do not authenticate a publisher or provide a sandbox for untrusted code. 

Dependency analysis and runtime-copy hashing take place during packaging. Execution uses the existing bytecode engine and numerical libraries. Startup, loading and warmed execution must be measured separately; native packaging is not a promise of faster computation or proven nonregression. 

No C++ compiler is required to invoke a prebuilt <b>nelsonc</b>. Redistribution notices included in the runtime must be preserved; review the terms of all application and runtime dependencies. 

When the FFTW module is retained, packaging includes its default double/single backend pair from the selected runtime binary directory and follows that pair's imports. A missing pair fails packaging. Custom backend locations and other native-internal dynamic loads still require explicit deployment validation. 

The runtime's native application entry removes the extraction directory after normal return, an explicit exit status or an uncaught error. A crash or forced termination of the process can still leave temporary data. 

The runtime file inventory is fixed before copying. Libraries, module data, resources and redistribution notices are checked against their planned SHA-256 digests after copying; detected changes fail packaging. The launcher also uses a checked staging copy. The generated <b>runtime.json</b> lists relative paths and digests without build-host source paths. It is not scanned at application startup. These checks are not an atomic filesystem snapshot or a publisher signature. 

On Windows, DLLs supplied with <b>-a</b>, literal <b>dlopen</b> filenames and statically resolved native functions include their transitive binary imports. Missing imports, incompatible architectures and conflicting native filenames fail during packaging. Application libraries are placed in the application archive; imports belonging to the selected Nelson runtime remain in that runtime. Native search directories are registered only during application execution, including the graphical event loop, and are restored afterward. This applies to both runtime modes and adds no work to numerical execution loops. 

Computed native filenames and dependencies loaded dynamically inside an external binary cannot be inferred and must be explicitly supplied and tested. Application-native dependency deployment is limited to Windows; the packager explicitly rejects this case on other platforms pending implementation and validation. 

ELF import analysis distinguishes inherited <b>RPATH</b> from direct-only <b>RUNPATH</b>, which suppresses the same object's RPATH. <b>LD\_LIBRARY\_PATH</b> is considered after RPATH or before RUNPATH. Encoded search paths precede the explicit selected-runtime fallback. <b>$ORIGIN</b> is expanded against the owning object, or the executable for LD\_LIBRARY\_PATH; empty path entries denote the invoking directory. An import containing a path cannot silently resolve to another file with the same basename. <b>$LIB</b> and <b>$PLATFORM</b> fail with an explicit target-resolution error. The system loader cache, hardware-capability variants and complete POSIX relocation remain unimplemented; offline import analysis does not establish native deployment support. These checks run during packaging, not during numerical execution. 

Before loading the engine on Linux, the launcher prepends the canonical runtime library directory to <b>LD\_LIBRARY\_PATH</b> and restarts the same executable before extraction, preserving arguments, the invoking directory and any nonempty inherited search path. An already leading runtime directory avoids the restart. Runtime library directories containing a colon, semicolon or dollar sign, and secure execution with <b>AT\_SECURE</b>, are rejected. This startup preparation does not change library bytes, interpreter fingerprints or numerical execution. It does not override legacy <b>DT\_RPATH</b> precedence or path-bearing <b>DT\_NEEDED</b> entries and is not complete POSIX relocation support. 

Source-free, relocated CLI applications have been validated on <b>Debian 13</b> x86-64 with glibc 2.41, using both bundled and installed runtimes from a matching CLI-only source build. The flat runtime uses <b>bin/linux</b>. Packaging retains the public gateway names returned by <b>modulepath</b>, including when cached identities name versioned shared libraries. The tests cover embedded dependencies and resources, arguments, invocation-directory output, exit status and cleanup. This does not validate other distributions, custom Linux installation layouts, Linux graphics, application-native POSIX extensions or macOS deployment, and is not a performance measurement. 

Failure of the main runtime startup script returns exit code 1 without running the application entry, including a missing startup script or required gateway. A shutdown request for success cannot hide this initialization failure. Successful startup and explicit exit codes remain unchanged. Generated Linux runtimes retain the interpreter's public library filename so they can also be selected as matching installed runtimes. These checks do not add work to the numerical execution loop and are not a general integrity check for arbitrary runtime damage. 

Minimal applications whose dependency plan contains zero or one module are supported, as are plans with several modules. A singleton module record converted through <b>jsondecode</b> and <b>jsonencode</b> is normalized during runtime planning; malformed records are rejected during packaging. Required bootstrap modules are retained even when the application's own module list is empty. This normalization does not add work to numerical execution. 

Application archives use the fixed timestamp <b>1980-01-01</b> and a stable packaged-path order. With identical platform, compiler/runtime binaries, input bytes and attributes, dependency selection, options and output base name, packaging is intended to produce byte-identical executables across output directories. Native toolchain rebuilds are a separate reproducibility concern. Ordinary <b>zip</b> calls keep their usual timestamps. This normalization is packaging-only and adds no numerical execution overhead. 

<b>--no-console</b> selects the native Windows-subsystem launcher, independently of <b>--gui</b>, <b>--cli</b> and the runtime distribution mode. No console is created, hidden or detached. A numerical application does not acquire graphical dependencies solely because its console is disabled. Unicode and empty command-line arguments, exit statuses, redirected output and graphical event lifetime are preserved. Without redirected streams there is no command window; automatic logs and error dialogs are not provided by this option. Other platforms reject it. The bytecode payload and runtime selection remain unchanged; startup and warmed performance still require separate measurements. 

NH5 and MAT datasets are embedded unchanged as binary resources with <b>-a</b> or <b>AdditionalFiles</b>. Automatic detection recognizes literal filenames passed to <b>load</b>, <b>loadnh5</b> and <b>loadmat</b>; computed paths need explicit inclusion. The generic load function retains available format readers in the runtime. Read a resource relative to mfilename('fullpath') or through the application search path with load. Source data is not required on the target machine. Embedded data is extracted under ctfroot and is not encrypted; persistent writes belong outside that directory. 

<b>RuntimeLogFile</b>, or <b>--runtime-log-file file</b>, enables an append-only runtime/output log. It is disabled by default. Relative log paths are resolved beside the generated executable, not at build time; its parent directory must exist and be writable. Environment variables are not expanded. Console output remains available. See nelson.compiler.BuildOptions for failure semantics. 

<b>--executable-icon image</b>, or <b>ExecutableIcon</b> in BuildOptions, selects a Windows native icon. The build-time path accepts JPG, JPEG, PNG, BMP or GIF; the default empty option keeps the existing launcher icon. See compiler.build.StandaloneApplicationOptions for sizing and transparency. This does not add image services to the generated application's runtime. 

<b>-C</b> or <b>--external-archive</b> maps to <b>EmbedArchive=false</b>: the application archive is written as an adjacent .nca file instead of inside the executable. Files includes this file. Distribute the pair with matching base names. Both runtime modes and native targets are supported. Startup and installer staging verify archive integrity. See compiler.build.StandaloneApplicationOptions for limits and format requirements. 

<b>TreatInputsAsNumeric</b> (false by default) enables one-time built-in str2double conversion of function arguments. The command forms are <b>-n</b> and <b>--numeric-inputs</b>. Invalid text becomes NaN, arguments are never evaluated as code, and argv('user') retains the original text. See [compiler.build.StandaloneApplicationOptions](../compiler/compiler.build.StandaloneApplicationOptions.md) for supported values and runtime requirements. 

<b>SupportPackages</b> defaults to {'autodetect'}. Use 'none' or registered nmm package names to filter dependencies at build time. The repeatable command option is <b>--support-package name</b>. See [compiler.build.StandaloneApplicationOptions](../compiler/compiler.build.StandaloneApplicationOptions.md) for exclusions, explicit-input conflicts and limitations.

## 💡 Examples

Build with validated options and inspect the result.

```matlab
options = ncc('options', 'app_entry.m', 'ExecutableName', 'application', ...
  'OutputDir', 'dist', 'RuntimeMode', 'installed', 'AdditionalFiles', 'assets');
plan = nelson.compiler.analyze(options);
result = ncc(options);
disp(result.Files);
disp(result.SHA256);
```
Build and inspect an application from an existing Nelson session.

```matlab
output = ncc('app_entry.m', '-o', 'dist/application.exe');
plan = ncc('app_entry.m', '--runtime', 'installed', '--explain-link');
```
Package a command-line application on Windows.

```matlab
nelsonc app_entry.m -o dist/application.exe
```
Include an explicitly selected resource.

```matlab
nelsonc app_entry.m -a data/input.dat -o dist/application.exe
```
Inspect dependencies for a nested package entry.

```matlab
nelsonc "+outer/+inner/app_entry.m" --explain-link
```


## 🔗 See also

[nelson.compiler.BuildOptions](../compiler/nelson.compiler.BuildOptions.md), [nelson.compiler.BuildResult](../compiler/nelson.compiler.BuildResult.md), [nelson.compiler.build](../compiler/nelson.compiler.build.md), [nelson.compiler.analyze](../compiler/nelson.compiler.analyze.md), [compiler_standalone_tutorial](../compiler/compiler_standalone_tutorial.md), [compiler_embedded_data_tutorial](../compiler/compiler_embedded_data_tutorial.md).
<!--
## 👤 Author

Allan CORNET
-->
