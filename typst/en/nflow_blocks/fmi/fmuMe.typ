#import "../nelson_help.typ": *

= fmuMe <nflow_blocks:fmi.fmuMe>


#block-icon(image("fmu.svg"))

Integrates a model-exchange FMU with the NFlow solver.

== Syntax

- #raw("Block type: fmuMe");

== Description

The WebAssembly browser version supports FMI 3.0 Model Exchange components packaged under binaries\/wasm32-wasip2. NFlow integrates their states and handles zero crossings and state reset events. The bundled reference demos include Wasm binaries.

 The #strong[FMU (ME)]; block loads the model-exchange archive selected by #strong[path];. NFlow evaluates its derivatives, zero crossings, and events while the selected NFlow solver integrates the continuous states.

 After import, ports and parameters follow the variables exposed by the FMU model description.

 
== See also

#nlink(<nflow_fmi:fmuToBlock>)[fmuToBlock];.
