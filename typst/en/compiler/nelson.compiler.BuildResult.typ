#import "nelson_help.typ": *

= nelson.compiler.BuildResult <compiler:nelson.compiler.BuildResult>

Inspect a completed application build.

== Syntax

- #raw("result = nelson.compiler.build(options)");
- #raw("result = ncc(options)");
- #raw("result = nelson.compiler.BuildResult(report, options)");
- #raw("values = struct(result)");

== Input argument

/ report: Scalar structure containing Executable, RuntimeDirectory, DependencyPlan, RuntimePlan, Manifest and SHA256.
/ options: Scalar nelson.compiler.BuildOptions object.

== Output argument

/ result: Scalar build result with read-only properties.

== Description

Normally obtain a result from #strong[ncc(options)]; or #strong[nelson.compiler.build(options)];. The constructor wraps an existing report: it does not build, check the files or authenticate their contents.

 #strong[BuildType];: standaloneApplication, or standaloneWindowsApplication when options.NoConsole is true.

 #strong[Files];: cell of paths to distribute, containing Executable and, for bundled builds, RuntimeDirectory. It is not a recursive file inventory or an installer.

 #strong[Executable];: absolute path to the native executable. #strong[RuntimeDirectory];: adjacent runtime directory, or empty for installed mode. Move a bundled executable and its runtime directory together without renaming them.

 #strong[Options];: value copy of the build configuration. Later changes to the caller's options do not change the result.

 #strong[DependencyPlan];: resolved application dependency analysis. #strong[RuntimePlan];: runtime requirements and the selected runtime file inventory for bundled mode. Use these to inspect why modules and files were included.

 #strong[Manifest];: embedded application manifest, describing archive entries and runtime requirements. #strong[SHA256];: digest of the generated executable, not a publisher signature.

 #strong[struct(result)]; converts the result to a scalar structure, including Options as a structure. Reports can contain absolute build-machine paths; review them before publishing. These results describe the current packager, not an application installer.

 When Options.EmbedArchive is false, Files also contains the .nca archive between the executable and any runtime directory. SHA256 remains the executable digest; archive integrity is checked at startup.


== Example

Inspect a build

``````matlab
options = ncc('options', 'app_entry.m', 'OutputDir', 'application-build');
result = ncc(options);
disp(result.Files);
disp(result.RuntimePlan);
text = jsonencode(struct(result));
``````


== See also

#nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions];, #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build];, #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial];.

// Author: Allan CORNET
