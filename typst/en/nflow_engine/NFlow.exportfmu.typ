#import "nelson_help.typ": *

= NFlow.exportfmu <nflow_engine:NFlow.exportfmu>

Export an nflow model as an FMI 3.0 Co-Simulation source FMU.

== Syntax

- #raw("fmuPath = NFlow.exportfmu(modelFile)");
- #raw("fmuPath = NFlow.exportfmu(modelFile, destinationDirectory)");

== Input argument

/ modelFile: a string: path of the .nflow model file.
/ destinationDirectory: a string: destination directory. Default: the model's directory.

== Output argument

/ fmuPath: a string: full path of the generated .fmu archive.

== Description

#strong[NFlow.exportfmu]; generates the model to C through the shared code-generation pipeline (same gates and diagnostics as #strong[nflow\_codegenerate];, interpreter passes included, so linear acausal islands export too), wraps it with an FMI 3.0 Co-Simulation interface, and packages #raw("modelDescription.xml"); plus the C sources into a #raw("<model>.fmu"); source FMU.

 External label sources become FMU inputs and external label sinks become FMU outputs. Only Float64 signals are supported at the FMU boundary; conditional-execution constructs beyond the lowered gates and FMU \/ nelsonFunction blocks are rejected with a typed message.


== Example

Export a model and read back the archive path.

``````matlab
% fmu = NFlow.exportfmu('C:/models/lowpass.nflow', tempdir());
``````


== See also

#nlink(<nflow_engine:nflow_codegenerate>)[nflow\_codegenerate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
