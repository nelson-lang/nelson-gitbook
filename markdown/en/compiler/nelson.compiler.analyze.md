# nelson.compiler.analyze

Inspect application dependencies without producing an executable.

## 📝 Syntax

- plan = nelson.compiler.analyze(options)
- nelson.compiler.analyze(options)

## 📥 Input argument

- options - One scalar nelson.compiler.BuildOptions object.

## 📤 Output argument

- plan - Scalar structure describing resolved dependencies, diagnostics and runtime requirements.

## 📄 Description

This function is equivalent to <b>ncc(options, '--explain-link')</b>. It reads the current sources, included resources and loaded function catalog. It does not execute the entry point, create the output directory, build an executable or copy a runtime.

<b>plan.complete</b> reports whether the dependency analysis completed without unresolved requirements. Inspect diagnostics when false. A complete static plan does not prove that every possible dynamic call or resource path is covered.

<b>plan.runtime</b> describes runtime requirements; <b>plan.runtime.modules</b> lists selected modules. plan.noConsole and plan.executableVersion reflect the launch configuration. Other fields describe resolved functions, resources, exclusions and reasons for inclusion.

Use AdditionalFiles for dynamically computed paths and inspect the diagnostics before building. Analysis reflects the current files and environment. It does not freeze an input snapshot: build performs its own analysis again.

With no output, the plan is printed. With one output, the structure can be inspected or converted using jsonencode. Reports may contain absolute build-machine paths.

## 💡 Example

Inspect a configuration

```matlab
options = ncc('options', 'app_entry.m', 'RuntimeMode', 'installed');
plan = nelson.compiler.analyze(options);
disp(plan.complete);
disp(plan.runtime.modules);
```

## 🔗 See also

[ncc](../modules_manager/ncc.md), [nelson.compiler.BuildOptions](../compiler/nelson.compiler.BuildOptions.md), [nelson.compiler.build](../compiler/nelson.compiler.build.md), [compiler_standalone_tutorial](../compiler/compiler_standalone_tutorial.md).

<!--
## 👤 Author

Allan CORNET
-->
