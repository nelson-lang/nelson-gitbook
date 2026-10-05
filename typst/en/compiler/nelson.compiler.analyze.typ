#import "nelson_help.typ": *

= nelson.compiler.analyze <compiler:nelson.compiler.analyze>

Inspect application dependencies without producing an executable.

== Syntax

- #raw("plan = nelson.compiler.analyze(options)");
- #raw("nelson.compiler.analyze(options)");

== Input argument

/ options: One scalar nelson.compiler.BuildOptions object.

== Output argument

/ plan: Scalar structure describing resolved dependencies, diagnostics and runtime requirements.

== Description

This function is equivalent to #strong[ncc(options, '--explain-link')];. It reads the current sources, included resources and loaded function catalog. It does not execute the entry point, create the output directory, build an executable or copy a runtime.

 #strong[plan.complete]; reports whether the dependency analysis completed without unresolved requirements. Inspect diagnostics when false. A complete static plan does not prove that every possible dynamic call or resource path is covered.

 #strong[plan.runtime]; describes runtime requirements; #strong[plan.runtime.modules]; lists selected modules. plan.noConsole and plan.executableVersion reflect the launch configuration. Other fields describe resolved functions, resources, exclusions and reasons for inclusion.

 Use AdditionalFiles for dynamically computed paths and inspect the diagnostics before building. Analysis reflects the current files and environment. It does not freeze an input snapshot: build performs its own analysis again.

 With no output, the plan is printed. With one output, the structure can be inspected or converted using jsonencode. Reports may contain absolute build-machine paths.


== Example

Inspect a configuration

``````matlab
options = ncc('options', 'app_entry.m', 'RuntimeMode', 'installed');
plan = nelson.compiler.analyze(options);
disp(plan.complete);
disp(plan.runtime.modules);
``````


== See also

#nlink(<modules_manager:ncc>)[ncc];, #nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions];, #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build];, #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial];.

// Author: Allan CORNET
