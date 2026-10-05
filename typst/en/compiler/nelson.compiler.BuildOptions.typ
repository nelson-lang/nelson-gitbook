#import "nelson_help.typ": *

= nelson.compiler.BuildOptions <compiler:nelson.compiler.BuildOptions>

Configure a native application build.

== Syntax

- #raw("options = nelson.compiler.BuildOptions(AppFile)");
- #raw("options = nelson.compiler.BuildOptions(AppFile, Name, Value, ...)");
- #raw("options = nelson.compiler.BuildOptions(AppFile, settings)");
- #raw("values = struct(options)");

== Input argument

/ AppFile: Existing .m entry file: character row vector or scalar string.
/ settings: Scalar structure of supported option names and values.

== Output argument

/ options: Scalar value object with validated, writable properties.

== Description

Load the optional compiler module first, for example with #strong[ncc('--help')];. #strong[ncc('options', AppFile, ...)]; loads it and constructs this same object. Construction validates options but does not build an executable.

 Names are case-insensitive and must be complete. Unknown names and an AppFile override in settings are rejected. Setters also validate subsequent assignments. Text accepts character row vectors or scalar strings; logical options accept true, false, numeric zero or one, and on or off text.

 #strong[AppFile];: existing entry script or function. Relative paths are anchored to the current directory when assigned. AdditionalFiles patterns are expanded during analysis\/build, not frozen at construction.

 #strong[ExecutableName];: defaults to the entry file stem. It must be an identifier. Windows device names are rejected on Windows. Do not include .exe.

 #strong[ExecutableVersion];: default #strong[1.0.0.0];. One to four decimal components in 0..65535, with omitted trailing components set to zero; for example 2.0 becomes 2.0.0.0. On Windows it sets native file and product versions. Other platforms validate the value but do not write Windows resources.

 Version text is limited to 23 characters, including separators.

 #strong[OutputDir];: defaults to ExecutableName followed by #strong[standaloneApplication];, relative to the construction directory. Changing ExecutableName later does not change OutputDir. An existing directory may be used, but the output executable and bundled runtime destination must not already exist.

 #strong[AdditionalFiles];: default empty cell. A file, recursive directory, wildcard pattern, string array or cell of text paths. Use it for resources and dynamically resolved code that static analysis cannot infer.

 #strong[AutoDetectDataFiles];: default true. Include supported, statically resolvable data-file references. False disables this discovery; explicit AdditionalFiles remain included.

 #strong[CustomHelpTextFile];: default empty. Optional existing text file displayed by the deployed application's --help option.

 #strong[Mode];: #strong[auto]; (default), #strong[cli]; or #strong[gui];. Selects runtime capabilities; gui includes graphics support. #strong[NoConsole];: default false; true selects a Windows application without a console and is rejected on other platforms. It is independent of Mode and does not enable graphics or redirect output to a log.

 #strong[RuntimeMode];: #strong[bundled]; (default) copies the selected runtime next to the executable; #strong[installed]; reuses a compatible installation and copies no runtime. #strong[Verbose];: default false; print build details.

 Options have value semantics. Copying and modifying an object does not change the original. #strong[struct(options)]; returns all properties. To reconstruct, pass values.AppFile as the first argument and remove AppFile from the settings structure.

 #strong[RuntimeLogFile];: empty by default (disabled). A nonempty filename enables an append-only UTF-8 log containing runtime initialization, standard output and standard error, without suppressing console output. Relative paths are resolved beside the executable, not against the calling directory. The parent directory must already exist and be writable; environment variables are not expanded. Failure to open or finish the log returns exit code 2 unless the application already failed. Concurrent streams and processes may interleave chunks; complete lines and global ordering are not guaranteed. Capture retains incomplete UTF-8 characters until the next read before appending them. Malformed or truncated output is preserved as raw bytes. Shared append behavior on network filesystems depends on the filesystem. Logging adds file I\/O only when enabled and requires a runtime with the output capture interface on Windows.

 #strong[ExecutableIcon]; is empty by default. On Windows, select an existing image to replace the native application icon at build time. See #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; for formats, transparency, sizing and platform limits. The command form is #strong[--executable-icon image];.

 #strong[EmbedArchive]; defaults to true. False maps to #strong[-C]; or #strong[--external-archive]; and produces an adjacent .nca to distribute with the executable in either runtime mode. See #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; for integrity checks, renaming and limitations.

 #strong[TreatInputsAsNumeric]; (false by default) enables one-time built-in str2double conversion of function arguments. The command forms are #strong[-n]; and #strong[--numeric-inputs];. Invalid text becomes NaN, arguments are never evaluated as code, and argv('user') retains the original text. See #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; for supported values and runtime requirements.

 #strong[SupportPackages]; defaults to {'autodetect'}. Use 'none' or registered nmm package names to filter dependencies at build time. The repeatable command option is #strong[--support-package name];. See #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; for exclusions, explicit-input conflicts and limitations.


== Example

Configure without building

``````matlab
ncc('--help');
entry = fullfile(modulepath('compiler'), 'examples', 'standalone', 'app_entry.m');
options = nelson.compiler.BuildOptions(entry, 'RuntimeMode', 'installed');
options.ExecutableVersion = '2.0';
values = struct(options);
copy = nelson.compiler.BuildOptions(values.AppFile, rmfield(values, 'AppFile'));
``````


== See also

#nlink(<modules_manager:ncc>)[ncc];, #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build];, #nlink(<compiler:nelson.compiler.analyze>)[nelson.compiler.analyze];, #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial];.

// Author: Allan CORNET
