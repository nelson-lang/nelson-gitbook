#import "nelson_help.typ": *

= NFlow FMI import

The NFlow FMI module imports Functional Mock-up Units (FMUs) that follow the FMI 3.0 standard and runs them as Co-Simulation or Model Exchange components.

 NFlow is currently released as #strong[1.0.0-beta.1];: it is functional and tested, but details of its interfaces and file format may still evolve based on feedback.

 It reads the model description of an FMU, exposes its variables and interfaces, and either drives a fixed-step Co-Simulation (the FMU owns its solver) or integrates a Model Exchange FMU with NFlow's own solver, recording the FMU outputs over time.

 Functions accept either a #strong[.fmu]; archive or an already-extracted FMU directory. Archives are unpacked with a ZIP-slip-hardened extractor into a temporary directory that is removed automatically.

 The same import also backs two blocks in the NFlow editor (category #strong[FMI];): an #strong[FMU]; block (Co-Simulation) and an #strong[FMU (ME)]; block (Model Exchange, whose continuous states join the diagram's global solver). Drop a block, click #strong[Browse FMU...]; to pick a #strong[.fmu];, and its input and output ports are configured automatically from the model description. Ready-to-open demo diagrams for several reference FMUs (VanDerPol, BouncingBall, Dahlquist, StateSpace, Feedthrough) ship in the module #strong[examples]; directory.

 
#table(
  columns: 2,
  table.header([Area], [Main entries], ),
  [Model description], [#strong[fmiInfo];], 
  [Co-Simulation], [#strong[fmiCoSimulate];], 
  [Model Exchange], [#strong[fmiModelExchange];], 
  [Modelica bridge], [#strong[modelicaInfo];, #strong[modelicaConfigure];, #strong[modelicaToFmu];], 
  [FMU import assistant], [#strong[fmuToBlock];], 
)
 The #strong[FMU import assistant]; (#strong[fmuToBlock];) turns any FMU into a native-looking nflow block -- input and output ports from the model description, parameters, and the FMU icon -- ready to drop into a library. It pairs with the Modelica bridge: #strong[modelicaToFmu]; produces an FMU, #strong[fmuToBlock]; wraps it as a block.

 The #strong[Modelica bridge]; lets an nflow model include a #strong[modelica]; block that references a Modelica model. At simulation time the model is compiled to an FMU with a user-installed #strong[OpenModelica]; and imported through the FMI path above, so physical (acausal) Modelica models simulate alongside ordinary blocks. #strong[modelicaInfo]; and #strong[modelicaConfigure]; report and select the OpenModelica used; #strong[modelicaToFmu]; performs the compilation. Worked examples (RC, RLC, mass-spring-damper) ship in the module #strong[examples\/modelica]; directory.

== Functions

- #nlink(<nflow_fmi:fmiCoSimulate>)[fmiCoSimulate]: Run a fixed-step Co-Simulation of an FMI 2.0 or 3.0 FMU.
- #nlink(<nflow_fmi:fmiInfo>)[fmiInfo]: Read the model description of an FMI 2.0 or 3.0 FMU.
- #nlink(<nflow_fmi:fmiModelExchange>)[fmiModelExchange]: Import and integrate an FMI 2.0 or 3.0 Model Exchange FMU.
- #nlink(<nflow_fmi:fmuToBlock>)[fmuToBlock]: Turn an FMU into a native nflow block manifest.
- #nlink(<nflow_fmi:modelicaConfigure>)[modelicaConfigure]: Set or query the OpenModelica used by the nflow Modelica bridge.
- #nlink(<nflow_fmi:modelicaInfo>)[modelicaInfo]: Report the OpenModelica used by the nflow Modelica bridge.
- #nlink(<nflow_fmi:modelicaToFmu>)[modelicaToFmu]: Compile a Modelica model to an FMU with OpenModelica.


#nested[
#pagebreak(weak: true)
#include "fmiCoSimulate.typ"
#pagebreak(weak: true)
#include "fmiInfo.typ"
#pagebreak(weak: true)
#include "fmiModelExchange.typ"
#pagebreak(weak: true)
#include "fmuToBlock.typ"
#pagebreak(weak: true)
#include "modelicaConfigure.typ"
#pagebreak(weak: true)
#include "modelicaInfo.typ"
#pagebreak(weak: true)
#include "modelicaToFmu.typ"
]
