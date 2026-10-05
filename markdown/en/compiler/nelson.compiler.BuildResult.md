# nelson.compiler.BuildResult

Inspect a completed application build.

## 📝 Syntax

- result = nelson.compiler.build(options)
- result = ncc(options)
- result = nelson.compiler.BuildResult(report, options)
- values = struct(result)

## 📥 Input argument

- report - Scalar structure containing Executable, RuntimeDirectory, DependencyPlan, RuntimePlan, Manifest and SHA256.
- options - Scalar nelson.compiler.BuildOptions object.

## 📤 Output argument

- result - Scalar build result with read-only properties.

## 📄 Description


Normally obtain a result from <b>ncc(options)</b> or <b>nelson.compiler.build(options)</b>. The constructor wraps an existing report: it does not build, check the files or authenticate their contents. 

<b>BuildType</b>: standaloneApplication, or standaloneWindowsApplication when options.NoConsole is true. 

<b>Files</b>: cell of paths to distribute, containing Executable and, for bundled builds, RuntimeDirectory. It is not a recursive file inventory or an installer. 

<b>Executable</b>: absolute path to the native executable. <b>RuntimeDirectory</b>: adjacent runtime directory, or empty for installed mode. Move a bundled executable and its runtime directory together without renaming them. 

<b>Options</b>: value copy of the build configuration. Later changes to the caller's options do not change the result. 

<b>DependencyPlan</b>: resolved application dependency analysis. <b>RuntimePlan</b>: runtime requirements and the selected runtime file inventory for bundled mode. Use these to inspect why modules and files were included. 

<b>Manifest</b>: embedded application manifest, describing archive entries and runtime requirements. <b>SHA256</b>: digest of the generated executable, not a publisher signature. 

<b>struct(result)</b> converts the result to a scalar structure, including Options as a structure. Reports can contain absolute build-machine paths; review them before publishing. These results describe the current packager, not an application installer. 

When Options.EmbedArchive is false, Files also contains the .nca archive between the executable and any runtime directory. SHA256 remains the executable digest; archive integrity is checked at startup.

## 💡 Example

Inspect a build

```matlab
options = ncc('options', 'app_entry.m', 'OutputDir', 'application-build');
result = ncc(options);
disp(result.Files);
disp(result.RuntimePlan);
text = jsonencode(struct(result));
```


## 🔗 See also

[nelson.compiler.BuildOptions](../compiler/nelson.compiler.BuildOptions.md), [nelson.compiler.build](../compiler/nelson.compiler.build.md), [compiler_standalone_tutorial](../compiler/compiler_standalone_tutorial.md).
<!--
## 👤 Author

Allan CORNET
-->
