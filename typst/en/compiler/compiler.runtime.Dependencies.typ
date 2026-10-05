#import "nelson_help.typ": *

= compiler.runtime.Dependencies <compiler:compiler.runtime.Dependencies>

Inspect the selected runtime file dependencies.

== Syntax

- #raw("dependencies = result.RuntimeDependencies");
- #raw("required = dependencies.Required");
- #raw("optional = dependencies.Optional");

== Description

Standalone build results return this object. Obtain it through result.RuntimeDependencies rather than constructing it directly. Required and Optional are read-only table properties.

 In Nelson these tables use Source, RelativePath and SHA256 columns. Source is an absolute build-machine filename; RelativePath is its destination inside the selected runtime; SHA256 is the captured file digest.

 Required contains the native-library closure, selected module files, resources and redistribution notices from the runtime snapshot. Optional is empty for the minimal closure because no additional optional runtime files are selected.

 These tables describe file requirements; they are not an installed runtime or an installer. Runtime startup ordering and generated inventory files are part of the internal snapshot, not additional copied-file rows.

 The snapshot is captured during the build without copying the runtime. Sources can subsequently change or disappear. Consumers must verify them before distribution; hashes are not signatures and the tables can expose local paths.

 The buildresult.json report preserves this snapshot and the module ordering needed for distribution planning. Merging reports requires matching architecture, runtime version, engine identity and startup ordering. Runtime source files must still match their captured hashes before copying; conflicting destination identities are rejected.


== See also

#nlink(<compiler:compiler.build.standaloneApplication>)[compiler.build.standaloneApplication];, #nlink(<compiler:compiler.build.StandaloneApplicationOptions>)[compiler.build.StandaloneApplicationOptions];, #nlink(<compiler:compiler_build_tutorial>)[compiler\_build\_tutorial];.

// Author: Allan CORNET
