#import "nelson_help.typ": *

= compiler.build.standaloneWindowsApplication <compiler:compiler.build.standaloneWindowsApplication>

Build a native Windows application without a console.

== Syntax

- #raw("result = compiler.build.standaloneWindowsApplication(AppFile)");
- #raw("result = compiler.build.standaloneWindowsApplication(AppFile, Name, Value, ...)");
- #raw("result = compiler.build.standaloneWindowsApplication(options)");

== Description

Load the optional compiler module first with ncc('--help'). This function requires Windows and creates a Windows-subsystem executable. It does not create a console and hide it afterward.

 Pass an existing .m entry and name-value options, or one scalar compiler.build.StandaloneApplicationOptions object without overrides. The optional output is a compiler.build.Results object whose BuildType is standaloneWindowsApplication.

 The option validation, embedded data, dependency analysis and installed-runtime requirement are shared with compiler.build.standaloneApplication. No runtime or installer is copied.

 Selecting this target alone does not request graphics. A numerical application remains numerical; an application using graphics selects the graphical services and retains the runtime's existing window\/event-loop lifetime.

 Files contains the executable, the .nca archive when EmbedArchive is false, and readme.txt. Archive behavior is shared with standaloneApplication. ExecutableIcon embeds the selected image as native Windows icon resources. Redirected output remains available.

 OutputDir may contain unrelated files. A previous build of the same ExecutableName and architecture can be rebuilt after verification of its report and output fingerprints. Changed files and unrecorded collisions are refused. The same protected publication and recovery rules as compiler.build.standaloneApplication apply, including when switching between console and no-console targets. Only the supported StandaloneApplicationOptions settings are accepted.

 The output directory also contains buildresult.json, a build-time distribution report. It is not part of Results.Files and is not required to run the executable. A verified rebuild publishes the new report last. Use the new Results object after rebuilding. See compiler.build.Results for report contents and limits.

 Native loading failures have the same exit code 2 and stderr diagnostics as compiler.build.standaloneApplication, including the library path and Windows error code. Set RuntimeLogFile to capture these diagnostics and application output without a console. See StandaloneApplicationOptions for path and error semantics.

 #strong[TreatInputsAsNumeric]; (false by default) enables one-time built-in str2double conversion of function arguments. The command forms are #strong[-n]; and #strong[--numeric-inputs];. Invalid text becomes NaN, arguments are never evaluated as code, and argv('user') retains the original text. See #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; for supported values and runtime requirements.

 #strong[SupportPackages]; selects automatic detection, no registered packages, or a list of allowed nmm names. See #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]; for the dependency policy and limitations.


== See also

#nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions];, #nlink(<compiler:compiler.build.Results>)[compiler.build.Results];, #nlink(<compiler:compiler_build_tutorial>)[compiler\_build\_tutorial];.

// Author: Allan CORNET
