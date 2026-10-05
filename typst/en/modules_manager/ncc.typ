#import "nelson_help.typ": *

= ncc <modules_manager:ncc>

Package a Nelson application as a native executable.

== Syntax

- #raw("options = ncc('options', entry, name, value, ...)");
- #raw("options = nelson.compiler.BuildOptions(entry, settings)");
- #raw("result = ncc(options)");
- #raw("result = nelson.compiler.build(options)");
- #raw("plan = nelson.compiler.analyze(options)");
- #raw("plan = ncc(options, '--explain-link')");
- #raw("output = ncc(entry, '-o', executable, options...)");
- #raw("plan = ncc(entry, '--explain-link', options...)");
- #raw("nelsonc entry.m -o application.exe [-a file] [--gui|--cli] [--runtime bundled|installed]");
- #raw("nelsonc entry.m [ -a file ] [--gui|--cli] --explain-link");
- #raw("nelsonc entry.m -o application.exe --help-file help.txt");
- #raw("nelsonc entry.m -o application.exe [-X|--no-auto-data] [-a file]");
- #raw("nelsonc --help");

== Description

#strong[ExecutableVersion];, or #strong[--executable-version version]; on the command line, sets the native Windows executable version. The default is #strong[1.0.0.0];. Supply one to four decimal components between 0 and 65535; omitted trailing components become zero in the executable resource, so #strong[4.0]; produces #strong[4.0.0.0];. FileVersion and ProductVersion contain the same value. The original setting is retained in the options and dependency plan. This setting is only used on Windows; other platforms validate it but leave their executable bytes unchanged. Version resources are written only to the checked staging copy before the archive is appended. The installed launcher and runtime are not modified. Identical inputs and version settings retain deterministic packaging. This option is unrelated to the runtime compatibility fingerprint and adds no application-startup or numerical-loop checks.

 #strong[ncc]; is the public packaging function inside Nelson. The operating-system command remains #strong[nelsonc];; the command-line examples below are intended for a system terminal. The optional module remains #strong[compiler];. The former #strong[nelsonc.m]; session macro has been renamed; internal #strong[Nelson:nelsonc:\*]; error identifiers are unchanged.

 #strong[ncc('options', entry, ...)]; loads the optional compiler module and creates a #strong[nelson.compiler.BuildOptions]; value object. Once the module is loaded, its constructor is also directly callable with name-value pairs or a scalar structure. Names are case-insensitive, without abbreviations. Unknown options fail. #strong[AppFile]; is the existing .m entry, supplied as the first argument. #strong[ExecutableName]; defaults to its filename stem, without extension; it must be an identifier and cannot be a reserved Windows device name. #strong[OutputDir]; defaults to ExecutableName followed by #strong[standaloneApplication];, selected during construction.

 #strong[AdditionalFiles]; defaults to an empty cell array and accepts a file, recursive directory, final-component filename pattern, or vector of names, with the same selection rules as #strong[-a];. #strong[AutoDetectDataFiles]; defaults to true; false maps to #strong[-X];. #strong[CustomHelpTextFile]; defaults to empty text and selects the UTF-8 application help document. #strong[Mode]; accepts auto (default), cli or gui. #strong[NoConsole]; defaults to false and selects a Windows-subsystem executable when true; it is Windows-only. #strong[RuntimeMode]; accepts bundled (default) or installed. #strong[Verbose]; defaults to false. Boolean properties accept scalar logical or numeric 0\/1 and on\/off text.

 Options validate values when assigned. Relative paths become absolute at assignment, without resolving links that the input selector must reject. Later directory changes do not retarget them. This does not freeze file contents, pattern membership or dependencies: analysis and build read their current state. Changing ExecutableName does not update an already selected OutputDir. Copying the value object and changing its properties leaves the original unchanged. #strong[struct(options)]; exposes its settings; reconstruct with the AppFile value as entry and the remaining fields as the settings structure.

 #strong[ncc(options)]; and #strong[nelson.compiler.build(options)]; use the existing packaging pipeline and return a read-only #strong[nelson.compiler.BuildResult];. With structured options, a build is quiet unless Verbose is true, including when no output is requested. #strong[nelson.compiler.analyze(options)]; and #strong[ncc(options, '--explain-link')]; return the command's dependency plan without creating the output directory. Graphical builds still require an advanced or graphical session. Existing outputs are not overwritten.

 The result's #strong[BuildType]; is standaloneApplication, or standaloneWindowsApplication when NoConsole is true. #strong[Files]; lists the top-level paths to distribute: #strong[Executable]; and, in bundled mode, #strong[RuntimeDirectory];. The latter is empty in installed mode. #strong[Options]; is a value copy; #strong[DependencyPlan];, #strong[RuntimePlan]; and #strong[Manifest]; describe the completed build; #strong[SHA256]; is the executable digest. RuntimePlan describes runtime requirements and, in bundled mode, the frozen copy inventory. These are build-time records, not live views. #strong[struct(result)]; converts Options to a plain structure too and can be JSON encoded. Reports can contain absolute build-host paths and are not sanitized deployment manifests. The structured API is build-only and adds no application-startup or numerical-loop checks.

 #strong[-X]; and #strong[--no-auto-data]; disable automatic inclusion of literal data filenames in recognized input-reading calls, including command-form calls and transitive source dependencies. The default remains enabled. The plan records #strong[autoDetectDataFiles];; skipped automatic references have #strong[ignored-data]; edges and do not generate missing-file diagnostics. Explicit #strong[-a]; files and #strong[%\#function]; inclusions remain active, with #strong[-a]; still taking precedence over #strong[%\#exclude];.

 Function and script dependencies, class methods and literal #strong[dlopen]; libraries are preserved by this option. Missing code and native dependencies still fail. Runtime-bootstrap analysis and required runtime resources are unchanged. File accesses are not rewritten: skipped data must be supplied at execution time, for example in the invocation directory. The option works from the native command and the Nelson function, with either runtime mode and custom application help, and adds no runtime checks.

 #strong[%\#function callback\_helper package.extra "included data.txt"]; includes functions, local definitions, class constructors and files without requiring a detected call. Relative files are searched beside the source, then in the current directory, user path and active Nelson path order. Quote names containing spaces; double a matching quote inside a quoted name. Standalone and inline directive comments are supported. Quoted program text, ordinary comments, block comments and continuation-line comments are ignored. A missing inclusion is reported with its source line.

 #strong[%\#exclude development\_only "ignored.txt"]; excludes named dependencies and suppresses their missing-reference diagnostics. Discovered exclusions apply across the application closure, including conservative dynamic fallback. Late exclusions remove otherwise unreachable transitive dependencies. The entry and explicit #strong[-a]; inputs override exclusions. The #strong[exclusions]; records in #strong[--explain-link]; include source, name, line, resolved target and #strong[explicitOverride];; excluded edges preserve #strong[referenceKind];.

 Exclusion does not delete executable statements or individual functions from a retained file. Guard development-only calls with #strong[if \~isdeployed()];; executing an excluded dependency can fail. An exclusion does not prune individual files from a complete runtime module required for other reasons. Other dynamic dependencies still use conservative fallback. Use #strong[-X]; to disable automatic data discovery globally. Directive handling occurs only during packaging and adds no application-startup or numerical-loop checks.

 #strong[--help-file]; embeds a UTF-8 document of at most 1 MiB. Invalid UTF-8 and null characters are rejected; an optional byte-order mark is removed. An empty document is valid. Its content is read once during packaging, without embedding the original filename. Calling the application with a single #strong[-?];, #strong[\/?]; or #strong[--help]; argument prints this text and exits successfully without executing the entry or waiting for application windows. A compatible runtime is still needed and initialized. Other argument lists are preserved. Without this build option, all arguments are forwarded unchanged. #strong[nelsonc --help]; and #strong[nelsonc -h]; remain compiler help commands. With #strong[--explain-link];, the document is validated and its content appears in the plan's #strong[helpText]; field.

 #strong[isdeployed()]; is true while application code and its graphical callbacks run. #strong[ctfroot()]; returns the temporary extraction root containing #strong[application.json]; and the #strong[roots]; subdirectories. Locate packaged resources relative to their original file with #strong[mfilename('fullpath')];; do not use the extraction root for persistent output. In an ordinary session, isdeployed is false and ctfroot raises an error. These runtime queries do not require the optional build module.

 The command and installed-runtime launcher recognize CMake installation prefixes as well as flat build directories. Configured data, library and executable directories are stored relative to the installation prefix; absolute directories within that prefix are converted, and directories outside it are rejected for the compiler tools. #strong[NELSONC\_RUNTIME\_ROOT]; accepts the installation prefix or its Nelson data directory. Automatic lookup uses the matching executable directory from #strong[NELSON\_RUNTIME\_PATH]; or #strong[PATH];, including configured nested directories. Data and libraries must belong to the same layout. The interpreter fingerprint check is unchanged. The bundled Windows runtime always uses #strong[bin\/x64]; or #strong[bin\/ARM64];, independently of the source installation's directory names.

 The optional #strong[compiler]; module requires #strong[file\_archiver];, #strong[dynamic\_link]; and #strong[json];. It is a separate Windows installer component, included in full installations and omitted in minimal installations. A build can exclude it with CMake #strong[-DWITHOUT\_COMPILER\_MODULE\=ON];, or omit its Visual Studio CLI project references with #strong[\/p:WithoutCompilerModule\=true];. ISCC #strong[\/DWITHOUT\_COMPILER\_MODULE]; excludes the component from an installer build. The public function reports a missing-module error when compiler is not installed. Already packaged applications do not require this build module.

 Inside Nelson, call #strong[ncc('entry.m', '-o', 'application.exe')];. The public function is a macro that loads the optional #strong[compiler]; module on first use and calls its native analysis builtin, without starting another Nelson process. Ordinary session startup does not load this build module. It is excluded from generated runtimes, including dynamic fallback; deployed applications cannot depend on its build services.

 In the command-style function form, arguments must be character vectors or scalar strings and use the command-line options below. Relative paths use the session's current directory. A single output returns the executable path, a plan structure with #strong[--explain-link];, or usage text with #strong[--help];. With no output, the result is printed. Errors propagate to the caller; the session continues, and its current directory and environment are preserved. The build module remains loaded. Analysis uses the session's loaded catalogue: use an advanced or graphical session to package graphical functions.

 #strong[nelsonc]; is an experimental command-line application packager. It combines a precompiled native launcher with application bytecode, resources and a manifest. It does not translate arbitrary Nelson code into standalone machine code.

 By default (#strong[--runtime bundled];), the result consists of the executable and an adjacent directory named after its output stem, such as #strong[application.runtime];. Distribute and move both together. The target machine does not need a separate Nelson installation when the required runtime dependencies are included.

 #strong[--runtime installed]; creates the executable with application bytecode and resources but does not copy a runtime. The target needs a compatible Nelson installation. Set #strong[NELSONC\_RUNTIME\_ROOT]; to its absolute root to select it explicitly. A missing or incompatible explicit selection fails without fallback. Otherwise the launcher checks the adjacent application.runtime directory, then #strong[NELSON\_RUNTIME\_PATH];, shared runtime registrations, standard shared directories on Windows, and finally absolute #strong[PATH]; entries. An existing incompatible adjacent runtime fails without fallback. Empty and relative search entries are ignored. The build-host installation path is not embedded.

 Linux shared registrations are read from #strong[XDG\_CONFIG\_HOME];, falling back to #strong[HOME\/.config];, followed by #strong[XDG\_CONFIG\_DIRS]; (default #strong[\/etc\/xdg];). Configuration directories must be absolute; relative entries are ignored. Only the first 16 system-directory entries are considered. A registration is named #strong[nelson\/runtimes\/architecture\/fingerprint.root]; relative to a configuration directory, where fingerprint is the interpreter SHA-256. It is an ordinary file containing exactly two LF-terminated lines: #strong[NELSON\_RUNTIME\_ROOT\_1]; and the absolute runtime root. No BOM, control characters, shell expansion or relative root is accepted. Records larger than 32768 bytes, symbolic-link records and special files are ignored. Directory symlinks retain their normal filesystem meaning.

 The first compatible registered runtime is selected, with user configuration preceding system configuration. The interpreter fingerprint is still verified; a registration is not a publisher signature. Discovery does not change PATH, configuration files or numerical execution. Rebuild applications with current launchers to use Linux registration discovery (runtimeDiscoveryVersion 3). Use #nlink(<compiler:compiler.runtime.customInstaller>)[compiler.runtime.customInstaller]; to package, install and update a minimal shared runtime; discovery itself does not install files.

 Installed mode requires the exact interpreter build and architecture, not merely the same version number. The interpreter fingerprint is checked before loading the engine, followed by the existing manifest and builtin checks. Discovery and fingerprinting run only at startup. A full installation may load more startup modules than a reduced runtime. The launcher does not modify the selected installation; application code retains its ordinary file-access capabilities.

 Application #strong[.nbc]; files are internal bytecode entries in the application archive, embedded in the executable by default, not separate files to distribute. The runtime libraries remain outside the executable. Class definitions and cases requiring source representation can retain #strong[.m]; files inside the archive. Packaging is not encryption or a source-confidentiality guarantee.

 Class dependency analysis follows superclasses, methods, local functions, property defaults, property types and validators without instantiating the class. Retained classes include their external methods and private dependencies; external methods can be embedded as bytecode. A missing external implementation is reported during packaging, while abstract method declarations do not require a separate file. Qualified static references and function-form method calls are supported conservatively, without type inference. Class use alone does not require project-wide dynamic fallback. Old-style constructors in #strong[\@Class]; directories and their methods can all be embedded as bytecode.

 The entry may be a script or a function, including a function in nested package directories. Function arguments are command-line strings; a function can receive them using #strong[varargin];. A script reads them using #strong[argv('user')];. Empty arguments and quoted arguments are preserved. Uncaught application errors produce a failing exit status, and an explicit exit status is propagated.

 #strong[-o]; specifies the output executable. On Windows its extension must be #strong[.exe];. Existing executables or runtime directories are not overwritten. Paths on the command line are resolved relative to the directory from which the compiler was invoked.

 On Windows, the ordinary CLI, advanced CLI, GUI and WebView launchers declare the same long-path capability as the standalone packager. In-session packaging can copy nested runtime files beyond MAX\_PATH when the host's #strong[LongPathsEnabled]; policy is enabled. Nelson does not change that system policy. Component-length limits and restrictions of external tools and APIs still apply.

 Qualified static calls compiled before their class is available still enforce method access rules after the class is loaded or constructed. A warmed function cache must not expose private or protected methods to external callers. Public calls and authorized calls within the class remain valid. These are language access rules, not a security sandbox for untrusted code.

 #strong[-a input]; explicitly includes a file, a recursive directory tree or a filename pattern, and may be repeated. Patterns accept #strong[\*]; and #strong[?]; only in the final path component; they select files in that directory without descending into subdirectories. Quote patterns in the shell. Other characters are literal; an existing literal filename takes precedence. Matching ignores case on Windows and respects it elsewhere.

 Selected trees, including empty folders, retain their relative layout inside #strong[roots\/N];. Selecting an ancestor of the entry preserves paths between code and sibling resources. Ordinary included folders are searchable; package, class and private directories keep their language-specific rules. Use #strong[which('data.txt')]; or a path relative to #strong[mfilename('fullpath')];. Packaging does not rewrite file accesses or reproduce absolute build-host paths.

 Explicit selections override #strong[%\#exclude]; and remain included with #strong[-X];. Duplicates are removed. Missing inputs, unmatched patterns, symbolic links, directory reparse points and non-regular files are rejected. Selection is limited to 10,000 files and folders. Membership is frozen during analysis; selected bytes are verified during staging. The plan records #strong[directories]; and ordered #strong[pathEntries]; separately from physical #strong[searchRoots];. Enumeration and matching run only during packaging. Larger payloads and extra search paths can still increase startup and ordinary lookup costs.

 Statically resolved function dependencies and recognized literal input filenames are included automatically. Computed filenames and resources supplied only at runtime cannot generally be inferred.

 #strong[--explain-link]; prints the dependency and runtime plan as JSON without creating an application. Its #strong[complete]; field describes resolution of analyzed references, not proof that every dynamic execution path or deployment dependency is covered.

 Dynamic calls and path changes broaden the dependency plan conservatively. Such applications may require substantially more runtime modules. Native extensions and dynamically loaded external libraries require additional deployment validation.

 Graphical startup is selected automatically from resolved module dependencies. #strong[--gui]; forces it; #strong[--cli]; restricts the compiler to the basic catalogue and rejects unresolved graphical dependencies. The options are mutually exclusive. By default, the compiler uses the advanced catalogue for analysis, but a generated numerical application still uses the basic runtime. Dynamic fallback may conservatively include graphical modules.

 After a graphical entry returns, the launcher continues processing events while visible figures remain, including figures with #strong[HandleVisibility]; set to #strong[off];. Timers and #strong[uicontrol]; callbacks can hide, close or replace windows. Invisible figures alone do not keep the executable running. The current graphical target is ordinary Qt figures on Windows x64, with bundled or installed runtime. QML-only window lifetime, WebView deployment, the full UI control matrix and graphical deployment on other platforms remain unvalidated. Executables use the host platform's native format; cross-compilation is not supported.

 The current timer implementation requires an explicit reference to survive the return of the function that created it. For a graphical application, retain that timer in #strong[figure.UserData]; or another persistent owner. This runtime limitation is independent of packaging.

 Textual callback properties and indeterminate callback values activate conservative dependency inclusion for supported graphical, timer, audio and handle builtins. Direct callback-property assignments are also inspected. Literal function handles, handle-first callback cells and empty callbacks do not themselves activate this fallback. Computed property names are treated conservatively unless analysis can prove a non-callback suffix. Text callbacks can therefore enlarge the runtime; prefer explicit handles when the target is known. Arbitrary method dispatch and native-generated callback names still require explicit inputs and deployment testing.

 The application starts in the directory from which its executable was invoked. Relative input and output paths refer to that directory, and output files survive extraction cleanup. The application may change its working directory explicitly; a script entry does not change it implicitly.

 Embedded files are extracted into a private temporary directory. To locate a resource stored beside a function, use #strong[fullfile(fileparts(mfilename('fullpath')), 'data.txt')]; and include the computed resource explicitly with #strong[-a];. Inclusion does not rewrite file-access expressions. Do not use the extraction directory for persistent output.

 The launcher ignores the implicit current-directory and personal user-path source indexes. Unrelated local source files must not replace packaged code. Directories explicitly added by the application remain searchable. The interpreter's ordinary search configuration is not changed outside the deployed process, and user-path preferences are not rewritten.

 Bytecode compatibility is checked against the matching runtime. Keep the executable with the runtime produced by the same build. Archive checks detect corruption and invalid paths; they do not authenticate a publisher or provide a sandbox for untrusted code.

 Dependency analysis and runtime-copy hashing take place during packaging. Execution uses the existing bytecode engine and numerical libraries. Startup, loading and warmed execution must be measured separately; native packaging is not a promise of faster computation or proven nonregression.

 No C++ compiler is required to invoke a prebuilt #strong[nelsonc];. Redistribution notices included in the runtime must be preserved; review the terms of all application and runtime dependencies.

 When the FFTW module is retained, packaging includes its default double\/single backend pair from the selected runtime binary directory and follows that pair's imports. A missing pair fails packaging. Custom backend locations and other native-internal dynamic loads still require explicit deployment validation.

 The runtime's native application entry removes the extraction directory after normal return, an explicit exit status or an uncaught error. A crash or forced termination of the process can still leave temporary data.

 The runtime file inventory is fixed before copying. Libraries, module data, resources and redistribution notices are checked against their planned SHA-256 digests after copying; detected changes fail packaging. The launcher also uses a checked staging copy. The generated #strong[runtime.json]; lists relative paths and digests without build-host source paths. It is not scanned at application startup. These checks are not an atomic filesystem snapshot or a publisher signature.

 On Windows, DLLs supplied with #strong[-a];, literal #strong[dlopen]; filenames and statically resolved native functions include their transitive binary imports. Missing imports, incompatible architectures and conflicting native filenames fail during packaging. Application libraries are placed in the application archive; imports belonging to the selected Nelson runtime remain in that runtime. Native search directories are registered only during application execution, including the graphical event loop, and are restored afterward. This applies to both runtime modes and adds no work to numerical execution loops.

 Computed native filenames and dependencies loaded dynamically inside an external binary cannot be inferred and must be explicitly supplied and tested. Application-native dependency deployment is limited to Windows; the packager explicitly rejects this case on other platforms pending implementation and validation.

 ELF import analysis distinguishes inherited #strong[RPATH]; from direct-only #strong[RUNPATH];, which suppresses the same object's RPATH. #strong[LD\_LIBRARY\_PATH]; is considered after RPATH or before RUNPATH. Encoded search paths precede the explicit selected-runtime fallback. #strong[\$ORIGIN]; is expanded against the owning object, or the executable for LD\_LIBRARY\_PATH; empty path entries denote the invoking directory. An import containing a path cannot silently resolve to another file with the same basename. #strong[\$LIB]; and #strong[\$PLATFORM]; fail with an explicit target-resolution error. The system loader cache, hardware-capability variants and complete POSIX relocation remain unimplemented; offline import analysis does not establish native deployment support. These checks run during packaging, not during numerical execution.

 Before loading the engine on Linux, the launcher prepends the canonical runtime library directory to #strong[LD\_LIBRARY\_PATH]; and restarts the same executable before extraction, preserving arguments, the invoking directory and any nonempty inherited search path. An already leading runtime directory avoids the restart. Runtime library directories containing a colon, semicolon or dollar sign, and secure execution with #strong[AT\_SECURE];, are rejected. This startup preparation does not change library bytes, interpreter fingerprints or numerical execution. It does not override legacy #strong[DT\_RPATH]; precedence or path-bearing #strong[DT\_NEEDED]; entries and is not complete POSIX relocation support.

 Source-free, relocated CLI applications have been validated on #strong[Debian 13]; x86-64 with glibc 2.41, using both bundled and installed runtimes from a matching CLI-only source build. The flat runtime uses #strong[bin\/linux];. Packaging retains the public gateway names returned by #strong[modulepath];, including when cached identities name versioned shared libraries. The tests cover embedded dependencies and resources, arguments, invocation-directory output, exit status and cleanup. This does not validate other distributions, custom Linux installation layouts, Linux graphics, application-native POSIX extensions or macOS deployment, and is not a performance measurement.

 Failure of the main runtime startup script returns exit code 1 without running the application entry, including a missing startup script or required gateway. A shutdown request for success cannot hide this initialization failure. Successful startup and explicit exit codes remain unchanged. Generated Linux runtimes retain the interpreter's public library filename so they can also be selected as matching installed runtimes. These checks do not add work to the numerical execution loop and are not a general integrity check for arbitrary runtime damage.

 Minimal applications whose dependency plan contains zero or one module are supported, as are plans with several modules. A singleton module record converted through #strong[jsondecode]; and #strong[jsonencode]; is normalized during runtime planning; malformed records are rejected during packaging. Required bootstrap modules are retained even when the application's own module list is empty. This normalization does not add work to numerical execution.

 Application archives use the fixed timestamp #strong[1980-01-01]; and a stable packaged-path order. With identical platform, compiler\/runtime binaries, input bytes and attributes, dependency selection, options and output base name, packaging is intended to produce byte-identical executables across output directories. Native toolchain rebuilds are a separate reproducibility concern. Ordinary #strong[zip]; calls keep their usual timestamps. This normalization is packaging-only and adds no numerical execution overhead.

 #strong[--no-console]; selects the native Windows-subsystem launcher, independently of #strong[--gui];, #strong[--cli]; and the runtime distribution mode. No console is created, hidden or detached. A numerical application does not acquire graphical dependencies solely because its console is disabled. Unicode and empty command-line arguments, exit statuses, redirected output and graphical event lifetime are preserved. Without redirected streams there is no command window; automatic logs and error dialogs are not provided by this option. Other platforms reject it. The bytecode payload and runtime selection remain unchanged; startup and warmed performance still require separate measurements.

 NH5 and MAT datasets are embedded unchanged as binary resources with #strong[-a]; or #strong[AdditionalFiles];. Automatic detection recognizes literal filenames passed to #strong[load];, #strong[loadnh5]; and #strong[loadmat];; computed paths need explicit inclusion. The generic load function retains available format readers in the runtime. Read a resource relative to mfilename('fullpath') or through the application search path with load. Source data is not required on the target machine. Embedded data is extracted under ctfroot and is not encrypted; persistent writes belong outside that directory.

 #strong[RuntimeLogFile];, or #strong[--runtime-log-file file];, enables an append-only runtime\/output log. It is disabled by default. Relative log paths are resolved beside the generated executable, not at build time; its parent directory must exist and be writable. Environment variables are not expanded. Console output remains available. See nelson.compiler.BuildOptions for failure semantics.

 #strong[--executable-icon image];, or #strong[ExecutableIcon]; in BuildOptions, selects a Windows native icon. The build-time path accepts JPG, JPEG, PNG, BMP or GIF; the default empty option keeps the existing launcher icon. See compiler.build.StandaloneApplicationOptions for sizing and transparency. This does not add image services to the generated application's runtime.

 #strong[-C]; or #strong[--external-archive]; maps to #strong[EmbedArchive\=false];: the application archive is written as an adjacent .nca file instead of inside the executable. Files includes this file. Distribute the pair with matching base names. Both runtime modes and native targets are supported. Startup and installer staging verify archive integrity. See compiler.build.StandaloneApplicationOptions for limits and format requirements.

 #strong[TreatInputsAsNumeric]; (false by default) enables one-time built-in str2double conversion of function arguments. The command forms are #strong[-n]; and #strong[--numeric-inputs];. Invalid text becomes NaN, arguments are never evaluated as code, and argv('user') retains the original text. See #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; for supported values and runtime requirements.

 #strong[SupportPackages]; defaults to {'autodetect'}. Use 'none' or registered nmm package names to filter dependencies at build time. The repeatable command option is #strong[--support-package name];. See #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; for exclusions, explicit-input conflicts and limitations.


== Examples

Build with validated options and inspect the result.

``````matlab
options = ncc('options', 'app_entry.m', 'ExecutableName', 'application', ...
  'OutputDir', 'dist', 'RuntimeMode', 'installed', 'AdditionalFiles', 'assets');
plan = nelson.compiler.analyze(options);
result = ncc(options);
disp(result.Files);
disp(result.SHA256);
``````

Build and inspect an application from an existing Nelson session.

``````matlab
output = ncc('app_entry.m', '-o', 'dist/application.exe');
plan = ncc('app_entry.m', '--runtime', 'installed', '--explain-link');
``````

Package a command-line application on Windows.

``````matlab
nelsonc app_entry.m -o dist/application.exe
``````

Include an explicitly selected resource.

``````matlab
nelsonc app_entry.m -a data/input.dat -o dist/application.exe
``````

Inspect dependencies for a nested package entry.

``````matlab
nelsonc "+outer/+inner/app_entry.m" --explain-link
``````


== See also

#nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions];, #nlink(<compiler:nelson.compiler.BuildResult>)[nelson.compiler.BuildResult];, #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build];, #nlink(<compiler:nelson.compiler.analyze>)[nelson.compiler.analyze];, #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial];, #nlink(<compiler:compiler_embedded_data_tutorial>)[compiler\_embedded\_data\_tutorial];.

// Author: Allan CORNET
