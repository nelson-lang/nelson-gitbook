#import "../nelson_help.typ": *

= fmu <nflow_blocks:fmi.fmu>


#block-icon(image("fmu.svg"))

Runs a co-simulation FMU inside an NFlow diagram.

== Syntax

- #raw("Block type: fmu");

== Description

The WebAssembly browser version supports FMI 3.0 Co-Simulation components packaged under binaries\/wasm32-wasip2, including numeric and Boolean vector ports. Use Browse FMU to upload an archive. The bundled reference demos include both native and Wasm binaries.

 The #strong[FMU (CS)]; block loads the archive selected by #strong[path]; and advances its co-simulation instance with the NFlow simulation.

 After import, the block ports and parameters follow the variables exposed by the FMU model description.

 
== See also

#nlink(<nflow_fmi:fmuToBlock>)[fmuToBlock];.
