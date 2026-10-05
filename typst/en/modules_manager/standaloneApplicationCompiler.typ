#import "nelson_help.typ": *

= standaloneApplicationCompiler <modules_manager:standaloneApplicationCompiler>

Open the standalone application project editor.

== Syntax

- #raw("standaloneApplicationCompiler");

== Description

Loads the optional compiler module and opens its singleton project editor in a graphical Nelson session. Calling the command again reuses the existing window and preserves its project. It accepts no input or output arguments.

 Application and installer settings, resources, dependency analysis, construction, project persistence and build-script export share the programmatic compiler services. Unsupported options are not silently enabled. Verified previous outputs can be rebuilt; unrelated or modified files are not overwritten.

 The commands deploytool and standaloneApplicationCompiler open the same editor. Legacy -build and -package arguments are not supported; use compiler.build and compiler.package functions.

 Saved .ncproj projects use relative paths for files inside the project directory, so this directory can be moved with its sources. External files retain absolute paths. See compiler\_project\_tutorial for path handling and existing-project support.

 Save after building to retain the build reference. Reopening restores verified build outputs for installer creation without rebuilding. If the report or outputs changed, the project still opens but its saved build is unavailable. A restored build is the previous application snapshot, not a rebuild of modified sources.

 Source fingerprints distinguish unchanged inputs from confirmed changes, which disable Installer until rebuilding. Missing or unanalyzable sources are reported as unavailable; older saved builds can have unknown source freshness. Their verified output remains distributable as a saved snapshot, not as a confirmed up-to-date build. Analyze refreshes this state; Installer checks it again. See compiler\_project\_tutorial for coverage and limits.


== Example

``````matlab
standaloneApplicationCompiler
``````


== See also

#nlink(<modules_manager:deploytool>)[deploytool];, #nlink(<compiler:compiler_project_tutorial>)[compiler\_project\_tutorial];, #nlink(<modules_manager:ncc>)[ncc];.

// Author: Allan CORNET
