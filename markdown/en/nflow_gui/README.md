# nflow editor

The nflow editor is Nelson's block-diagram environment for building and simulating dynamic systems.

It provides a visual editor for wiring blocks and subsystems, saving and loading diagrams in the **.nflow** JSON format, and running simulations with either the fixed-step engine or the variable-step (CVODES) solver, with zero-crossing detection for discontinuous blocks.

Diagrams can also be turned into standalone C or Rust code through the code generator.

NFlow is currently released as **1.0.0-beta.1**: it is functional and tested, but details of its interfaces and file format may still evolve based on feedback.

## Functions

- [nflow](nflow.md) - Launch the nflow editor, optionally on a model file.
- [nflow_dashboard](nflow_dashboard.md) - Monitor and adjust NFlow simulations with interactive Dashboard blocks.
- [nflow_multirate](nflow_multirate.md) - Running blocks at different sample rates (multi-rate).
- [nflow_solvers](nflow_solvers.md) - Choosing how a diagram is integrated (solver selection).
- [nflow_wire_editing](nflow_wire_editing.md) - Wire routing and editing in the nflow editor.
- [nflow_workspace](nflow_workspace.md) - Using the nflow editor workspace.
- [open_system](open_system.md) - Open the nflow editor on a model, a model file, or an SSP archive.
