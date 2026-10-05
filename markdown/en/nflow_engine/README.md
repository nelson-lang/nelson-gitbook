# nflow engine


Programmatic creation and editing of nflow block-diagram models.

    
NFlow is currently released as **1.0.0-beta.1**: it is functional and tested, but details of its interfaces and file format may still evolve based on feedback.


## Functions

- [NFlow.exportfmu](NFlow.exportfmu.md) - Export an nflow model as an FMI 3.0 Co-Simulation source FMU.
- [NFlow.plotScopes](NFlow.plotScopes.md) - Open one figure per scope of an nflow simulation result.
- [add_block](add_block.md) - Add a block to an nflow model from a library source.
- [add_line](add_line.md) - Connect two block ports in an nflow model.
- [bdIsDirty](bdIsDirty.md) - Return true when an nflow model has unsaved changes.
- [bdIsLoaded](bdIsLoaded.md) - Return true when an nflow model is loaded.
- [bdclose](bdclose.md) - Unload one or all nflow models, discarding unsaved changes.
- [bdroot](bdroot.md) - Return the top-level model of a block path.
- [close_system](close_system.md) - Unload an nflow model; a dirty model requires an explicit save flag.
- [delete_block](delete_block.md) - Delete a block and all of its connections from an nflow model.
- [delete_line](delete_line.md) - Delete a connection between two block ports.
- [find_system](find_system.md) - List the blocks of a model, optionally filtered by type.
- [gcbh](gcbh.md) - Return the handle of the current block.
- [getNFlowBlockHandle](getNFlowBlockHandle.md) - Return the handle of a block by path, or -1 if not found.
- [get_param](get_param.md) - Query a model or block parameter.
- [getfullname](getfullname.md) - Return the full path of a block or model from its handle.
- [linmod](linmod.md) - Numerical linearization of an nflow model.
- [load_system](load_system.md) - Load an nflow model from a .nflow file without opening the editor.
- [new_system](new_system.md) - Create and load an empty nflow model.
- [nflow_codegenerate](nflow_codegenerate.md) - Generate standalone C or Rust code from an nflow model.
- [save_system](save_system.md) - Save an nflow model to a .nflow file.
- [set_param](set_param.md) - Set model or block parameters atomically.
- [sim](sim.md) - Run an nflow simulation of a model and return its results.
- [NFlow.sspInfo](ssp.md) - Inspect, import and export SSP (System Structure and Parameterization) archives.
- [trim](trim.md) - Find a steady-state operating point of an nflow model.

