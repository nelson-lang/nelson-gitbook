#import "nelson_help.typ": *

= nflow engine

Programmatic creation and editing of nflow block-diagram models.

 NFlow is currently released as #strong[1.0.0-beta.1];: it is functional and tested, but details of its interfaces and file format may still evolve based on feedback.

== Functions

- #nlink(<nflow_engine:NFlow.exportfmu>)[NFlow.exportfmu]: Export an nflow model as an FMI 3.0 Co-Simulation source FMU.
- #nlink(<nflow_engine:NFlow.plotScopes>)[NFlow.plotScopes]: Open one figure per scope of an nflow simulation result.
- #nlink(<nflow_engine:add_block>)[add\_block]: Add a block to an nflow model from a library source.
- #nlink(<nflow_engine:add_line>)[add\_line]: Connect two block ports in an nflow model.
- #nlink(<nflow_engine:bdIsDirty>)[bdIsDirty]: Return true when an nflow model has unsaved changes.
- #nlink(<nflow_engine:bdIsLoaded>)[bdIsLoaded]: Return true when an nflow model is loaded.
- #nlink(<nflow_engine:bdclose>)[bdclose]: Unload one or all nflow models, discarding unsaved changes.
- #nlink(<nflow_engine:bdroot>)[bdroot]: Return the top-level model of a block path.
- #nlink(<nflow_engine:close_system>)[close\_system]: Unload an nflow model; a dirty model requires an explicit save flag.
- #nlink(<nflow_engine:delete_block>)[delete\_block]: Delete a block and all of its connections from an nflow model.
- #nlink(<nflow_engine:delete_line>)[delete\_line]: Delete a connection between two block ports.
- #nlink(<nflow_engine:find_system>)[find\_system]: List the blocks of a model, optionally filtered by type.
- #nlink(<nflow_engine:gcbh>)[gcbh]: Return the handle of the current block.
- #nlink(<nflow_engine:getNFlowBlockHandle>)[getNFlowBlockHandle]: Return the handle of a block by path, or -1 if not found.
- #nlink(<nflow_engine:get_param>)[get\_param]: Query a model or block parameter.
- #nlink(<nflow_engine:getfullname>)[getfullname]: Return the full path of a block or model from its handle.
- #nlink(<nflow_engine:linmod>)[linmod]: Numerical linearization of an nflow model.
- #nlink(<nflow_engine:load_system>)[load\_system]: Load an nflow model from a .nflow file without opening the editor.
- #nlink(<nflow_engine:new_system>)[new\_system]: Create and load an empty nflow model.
- #nlink(<nflow_engine:nflow_codegenerate>)[nflow\_codegenerate]: Generate standalone C or Rust code from an nflow model.
- #nlink(<nflow_engine:save_system>)[save\_system]: Save an nflow model to a .nflow file.
- #nlink(<nflow_engine:set_param>)[set\_param]: Set model or block parameters atomically.
- #nlink(<nflow_engine:sim>)[sim]: Run an nflow simulation of a model and return its results.
- #nlink(<nflow_engine:ssp>)[NFlow.sspInfo]: Inspect, import and export SSP (System Structure and Parameterization) archives.
- #nlink(<nflow_engine:trim>)[trim]: Find a steady-state operating point of an nflow model.


#nested[
#pagebreak(weak: true)
#include "NFlow.exportfmu.typ"
#pagebreak(weak: true)
#include "NFlow.plotScopes.typ"
#pagebreak(weak: true)
#include "add_block.typ"
#pagebreak(weak: true)
#include "add_line.typ"
#pagebreak(weak: true)
#include "bdIsDirty.typ"
#pagebreak(weak: true)
#include "bdIsLoaded.typ"
#pagebreak(weak: true)
#include "bdclose.typ"
#pagebreak(weak: true)
#include "bdroot.typ"
#pagebreak(weak: true)
#include "close_system.typ"
#pagebreak(weak: true)
#include "delete_block.typ"
#pagebreak(weak: true)
#include "delete_line.typ"
#pagebreak(weak: true)
#include "find_system.typ"
#pagebreak(weak: true)
#include "gcbh.typ"
#pagebreak(weak: true)
#include "getNFlowBlockHandle.typ"
#pagebreak(weak: true)
#include "get_param.typ"
#pagebreak(weak: true)
#include "getfullname.typ"
#pagebreak(weak: true)
#include "linmod.typ"
#pagebreak(weak: true)
#include "load_system.typ"
#pagebreak(weak: true)
#include "new_system.typ"
#pagebreak(weak: true)
#include "nflow_codegenerate.typ"
#pagebreak(weak: true)
#include "save_system.typ"
#pagebreak(weak: true)
#include "set_param.typ"
#pagebreak(weak: true)
#include "sim.typ"
#pagebreak(weak: true)
#include "ssp.typ"
#pagebreak(weak: true)
#include "trim.typ"
]
