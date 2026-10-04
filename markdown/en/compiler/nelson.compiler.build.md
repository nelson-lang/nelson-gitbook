# nelson.compiler.build

Build a native executable from structured options.

## 📝 Syntax

- result = nelson.compiler.build(options)
- nelson.compiler.build(options)

## 📥 Input argument

- options - One scalar nelson.compiler.BuildOptions object. No additional overrides are accepted.

## 📤 Output argument

- result - nelson.compiler.BuildResult containing output paths, dependency reports and executable digest.

## 📄 Description

This is the structured build entry point of the optional compiler module. <b>ncc(options)</b> is equivalent. Use ncc('options', ...) to load the module and construct the configuration.

The builder analyzes dependencies, compiles application .m files into .nbc bytecode, packages code and data into the executable, and selects runtime dependencies. A precompiled launcher is required; no C++ compiler is needed on the build machine.

The output uses the host's native executable format: .exe on Windows and an executable file on supported Unix platforms. This is not cross-compilation. NoConsole selects the Windows windowed launcher; Mode independently selects graphics capabilities.

With <b>RuntimeMode='bundled'</b>, distribute both the executable and the adjacent .runtime directory listed in result.Files. The runtime is selected from the dependency plan, not an unrestricted copy of the development installation. Dynamic dependencies and graphics may require larger sets of modules.

With <b>RuntimeMode='installed'</b>, only the executable is produced. The receiving machine needs an installation matching the required architecture and engine fingerprint. A version number alone is insufficient. Runtime selection supports <b>NELSONC_RUNTIME_ROOT</b> and <b>NELSON_RUNTIME_PATH</b>; consult ncc for search rules.

The destination directory is created if needed. An existing output executable or bundled runtime destination is rejected, not overwritten. The entry source files are not needed by the deployed application after packaging.

Calling without an output still builds. Verbose controls diagnostic printing. The result is not an installer. Packaging does not promise faster numerical execution; bytecode uses the normal execution engine.

## 💡 Example

Build using an installed runtime

```matlab
options = ncc('options', 'app_entry.m', ...
  'RuntimeMode', 'installed', 'OutputDir', 'application-build');
result = nelson.compiler.build(options);
disp(result.Executable);
```

## 🔗 See also

[ncc](../modules_manager/ncc.md), [nelson.compiler.BuildOptions](../compiler/nelson.compiler.BuildOptions.md), [nelson.compiler.BuildResult](../compiler/nelson.compiler.BuildResult.md), [nelson.compiler.analyze](../compiler/nelson.compiler.analyze.md), [compiler_standalone_tutorial](../compiler/compiler_standalone_tutorial.md).

<!--
## 👤 Author

Allan CORNET
-->
