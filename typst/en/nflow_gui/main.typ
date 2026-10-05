#import "nelson_help.typ": *

= nflow editor

The nflow editor is Nelson's block-diagram environment for building and simulating dynamic systems.

 It provides a visual editor for wiring blocks and subsystems, saving and loading diagrams in the #strong[.nflow]; JSON format, and running simulations with either the fixed-step engine or the variable-step (CVODES) solver, with zero-crossing detection for discontinuous blocks.

 Diagrams can also be turned into standalone C or Rust code through the code generator.

 NFlow is currently released as #strong[1.0.0-beta.1];: it is functional and tested, but details of its interfaces and file format may still evolve based on feedback.

== Functions

- #nlink(<nflow_gui:nflow>)[nflow]: Launch the nflow editor, optionally on a model file.
- #nlink(<nflow_gui:nflow_dashboard>)[nflow\_dashboard]: Monitor and adjust NFlow simulations with interactive Dashboard blocks.
- #nlink(<nflow_gui:nflow_multirate>)[nflow\_multirate]: Running blocks at different sample rates (multi-rate).
- #nlink(<nflow_gui:nflow_solvers>)[nflow\_solvers]: Choosing how a diagram is integrated (solver selection).
- #nlink(<nflow_gui:nflow_wire_editing>)[nflow\_wire\_editing]: Wire routing and editing in the nflow editor.
- #nlink(<nflow_gui:nflow_workspace>)[nflow\_workspace]: Using the nflow editor workspace.
- #nlink(<nflow_gui:open_system>)[open\_system]: Open the nflow editor on a model, a model file, or an SSP archive.


#nested[
#pagebreak(weak: true)
#include "nflow.typ"
#pagebreak(weak: true)
#include "nflow_dashboard.typ"
#pagebreak(weak: true)
#include "nflow_multirate.typ"
#pagebreak(weak: true)
#include "nflow_solvers.typ"
#pagebreak(weak: true)
#include "nflow_wire_editing.typ"
#pagebreak(weak: true)
#include "nflow_workspace.typ"
#pagebreak(weak: true)
#include "open_system.typ"
]
