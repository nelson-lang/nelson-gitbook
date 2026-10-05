# NFlow FMI import


    
The NFlow FMI module imports Functional Mock-up Units (FMUs) that follow the FMI 3.0 standard and runs them as Co-Simulation or Model Exchange components.

    
NFlow is currently released as **1.0.0-beta.1**: it is functional and tested, but details of its interfaces and file format may still evolve based on feedback.

    
It reads the model description of an FMU, exposes its variables and interfaces, and either drives a fixed-step Co-Simulation (the FMU owns its solver) or integrates a Model Exchange FMU with NFlow's own solver, recording the FMU outputs over time.

    
Functions accept either a **.fmu** archive or an already-extracted FMU directory. Archives are unpacked with a ZIP-slip-hardened extractor into a temporary directory that is removed automatically.

    
The same import also backs two blocks in the NFlow editor (category **FMI**): an **FMU** block (Co-Simulation) and an **FMU (ME)** block (Model Exchange, whose continuous states join the diagram's global solver). Drop a block, click **Browse FMU...** to pick a **.fmu**, and its input and output ports are configured automatically from the model description. Ready-to-open demo diagrams for several reference FMUs (VanDerPol, BouncingBall, Dahlquist, StateSpace, Feedthrough) ship in the module **examples** directory.

    
| Area | Main entries |
| --- | --- |
| Model description | **fmiInfo** |
| Co-Simulation | **fmiCoSimulate** |
| Model Exchange | **fmiModelExchange** |
| Modelica bridge | **modelicaInfo**, **modelicaConfigure**, **modelicaToFmu** |
| FMU import assistant | **fmuToBlock** |


    
The **FMU import assistant** (**fmuToBlock**) turns any FMU into a native-looking nflow block -- input and output ports from the model description, parameters, and the FMU icon -- ready to drop into a library. It pairs with the Modelica bridge: **modelicaToFmu** produces an FMU, **fmuToBlock** wraps it as a block.

    
The **Modelica bridge** lets an nflow model include a **modelica** block that references a Modelica model. At simulation time the model is compiled to an FMU with a user-installed **OpenModelica** and imported through the FMI path above, so physical (acausal) Modelica models simulate alongside ordinary blocks. **modelicaInfo** and **modelicaConfigure** report and select the OpenModelica used; **modelicaToFmu** performs the compilation. Worked examples (RC, RLC, mass-spring-damper) ship in the module **examples/modelica** directory.

  

## Functions

- [fmiCoSimulate](fmiCoSimulate.md) - Run a fixed-step Co-Simulation of an FMI 2.0 or 3.0 FMU.
- [fmiInfo](fmiInfo.md) - Read the model description of an FMI 2.0 or 3.0 FMU.
- [fmiModelExchange](fmiModelExchange.md) - Import and integrate an FMI 2.0 or 3.0 Model Exchange FMU.
- [fmuToBlock](fmuToBlock.md) - Turn an FMU into a native nflow block manifest.
- [modelicaConfigure](modelicaConfigure.md) - Set or query the OpenModelica used by the nflow Modelica bridge.
- [modelicaInfo](modelicaInfo.md) - Report the OpenModelica used by the nflow Modelica bridge.
- [modelicaToFmu](modelicaToFmu.md) - Compile a Modelica model to an FMU with OpenModelica.

