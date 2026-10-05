#import "nelson_help.typ": *

= Standalone application compiler

The optional compiler module analyzes dependencies and builds native applications from .m files.

 Use ncc to load the module on demand. compiler.build provides console and no-console standalone builds, shared options and read-only results with runtime dependency tables. The nelson.compiler interfaces retain the existing bundled-runtime path. Tutorials cover multiple functions, embedded data and both build interfaces.

== Functions

- #nlink(<compiler:compiler.build.Results>)[compiler.build.Results]: Inspect a completed standalone build.
- #nlink(<compiler:compiler.build.Results>)[compiler.build.Results]: Inspect a completed standalone build.
- #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]: Validated standalone application build options.
- #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions]: Validated standalone application build options.
- #nlink(<compiler:compiler.build.standaloneApplication>)[compiler.build.standaloneApplication]: Build a native standalone application.
- #nlink(<compiler:compiler.build.standaloneApplication>)[compiler.build.standaloneApplication]: Build a native standalone application.
- #nlink(<compiler:compiler.build.standaloneWindowsApplication>)[compiler.build.standaloneWindowsApplication]: Build a native Windows application without a console.
- #nlink(<compiler:compiler.build.standaloneWindowsApplication>)[compiler.build.standaloneWindowsApplication]: Build a native Windows application without a console.
- #nlink(<compiler:compiler.package.InstallerOptions>)[compiler.package.InstallerOptions]: Configure application installer generation.
- #nlink(<compiler:compiler.package.InstallerOptions>)[compiler.package.InstallerOptions]: Configure application installer generation.
- #nlink(<compiler:compiler.package.installer>)[compiler.package.installer]: Create a native application installer.
- #nlink(<compiler:compiler.package.installer>)[compiler.package.installer]: Create a native application installer.
- #nlink(<compiler:compiler.runtime.Dependencies>)[compiler.runtime.Dependencies]: Inspect the selected runtime file dependencies.
- #nlink(<compiler:compiler.runtime.Dependencies>)[compiler.runtime.Dependencies]: Inspect the selected runtime file dependencies.
- #nlink(<compiler:compiler.runtime.customInstaller>)[compiler.runtime.customInstaller]: Create a shared minimal-runtime installer.
- #nlink(<compiler:compiler.runtime.customInstaller>)[compiler.runtime.customInstaller]: Create a shared minimal-runtime installer.
- #nlink(<compiler:compiler_build_tutorial>)[compiler\_build\_tutorial]: Tutorial: build console and no-console applications.
- #nlink(<compiler:compiler_build_tutorial>)[compiler\_build\_tutorial]: Tutorial: build console and no-console applications.
- #nlink(<compiler:compiler_embedded_data_tutorial>)[compiler\_embedded\_data\_tutorial]: Tutorial: embed NH5 and MAT datasets in an executable.
- #nlink(<compiler:compiler_embedded_data_tutorial>)[compiler\_embedded\_data\_tutorial]: Tutorial: embed NH5 and MAT datasets in an executable.
- #nlink(<compiler:compiler_installer_tutorial>)[compiler\_installer\_tutorial]: Build, install and run a Windows application.
- #nlink(<compiler:compiler_installer_tutorial>)[compiler\_installer\_tutorial]: Build, install and run a Windows application.
- #nlink(<compiler:compiler_linux_installer_tutorial>)[compiler\_linux\_installer\_tutorial]: Build, install and remove a Linux application.
- #nlink(<compiler:compiler_linux_installer_tutorial>)[compiler\_linux\_installer\_tutorial]: Build, install and remove a Linux application.
- #nlink(<compiler:compiler_linux_runtime_tutorial>)[compiler\_linux\_runtime\_tutorial]: Tutorial: a shared minimal runtime on Linux.
- #nlink(<compiler:compiler_linux_runtime_tutorial>)[compiler\_linux\_runtime\_tutorial]: Tutorial: a shared minimal runtime on Linux.
- #nlink(<compiler:compiler_macos_installer_tutorial>)[compiler\_macos\_installer\_tutorial]: Build and package a native macOS application.
- #nlink(<compiler:compiler_macos_installer_tutorial>)[compiler\_macos\_installer\_tutorial]: Build and package a native macOS application.
- #nlink(<compiler:compiler_project_tutorial>)[compiler\_project\_tutorial]: Tutorial: configure, build and package an application in the project editor.
- #nlink(<compiler:compiler_project_tutorial>)[compiler\_project\_tutorial]: Tutorial: configure, build and package an application in the project editor.
- #nlink(<compiler:compiler_runtime_tutorial>)[compiler\_runtime\_tutorial]: Tutorial: one runtime for multiple applications.
- #nlink(<compiler:compiler_runtime_tutorial>)[compiler\_runtime\_tutorial]: Tutorial: one runtime for multiple applications.
- #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial]: Tutorial: distribute an application with multiple source files and data.
- #nlink(<compiler:compiler_standalone_tutorial>)[compiler\_standalone\_tutorial]: Tutorial: distribute an application with multiple source files and data.
- #nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions]: Configure a native application build.
- #nlink(<compiler:nelson.compiler.BuildOptions>)[nelson.compiler.BuildOptions]: Configure a native application build.
- #nlink(<compiler:nelson.compiler.BuildResult>)[nelson.compiler.BuildResult]: Inspect a completed application build.
- #nlink(<compiler:nelson.compiler.BuildResult>)[nelson.compiler.BuildResult]: Inspect a completed application build.
- #nlink(<compiler:nelson.compiler.analyze>)[nelson.compiler.analyze]: Inspect application dependencies without producing an executable.
- #nlink(<compiler:nelson.compiler.analyze>)[nelson.compiler.analyze]: Inspect application dependencies without producing an executable.
- #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build]: Build a native executable from structured options.
- #nlink(<compiler:nelson.compiler.build>)[nelson.compiler.build]: Build a native executable from structured options.


#nested[
#pagebreak(weak: true)
#include "compiler.build.Results.typ"
#pagebreak(weak: true)
#include "compiler.build.StandaloneApplicationOptions.typ"
#pagebreak(weak: true)
#include "compiler.build.standaloneApplication.typ"
#pagebreak(weak: true)
#include "compiler.build.standaloneWindowsApplication.typ"
#pagebreak(weak: true)
#include "compiler.package.InstallerOptions.typ"
#pagebreak(weak: true)
#include "compiler.package.installer.typ"
#pagebreak(weak: true)
#include "compiler.runtime.Dependencies.typ"
#pagebreak(weak: true)
#include "compiler.runtime.customInstaller.typ"
#pagebreak(weak: true)
#include "compiler_build_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_embedded_data_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_installer_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_linux_installer_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_linux_runtime_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_macos_installer_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_project_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_runtime_tutorial.typ"
#pagebreak(weak: true)
#include "compiler_standalone_tutorial.typ"
#pagebreak(weak: true)
#include "nelson.compiler.BuildOptions.typ"
#pagebreak(weak: true)
#include "nelson.compiler.BuildResult.typ"
#pagebreak(weak: true)
#include "nelson.compiler.analyze.typ"
#pagebreak(weak: true)
#include "nelson.compiler.build.typ"
]
