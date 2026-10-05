#import "nelson_help.typ": *

= fmiModelExchange <nflow_fmi:fmiModelExchange>

Import and integrate an FMI 2.0 or 3.0 Model Exchange FMU.

== Syntax

- #raw("result = fmiModelExchange(fmu, tStop)");
- #raw("result = fmiModelExchange(fmu, tStop, dt)");

== Input argument

/ fmu: a string scalar or character row vector: the path to a #strong[.fmu]; archive, or to an already-extracted FMU directory. The FMU must provide the Model Exchange interface.
/ tStop: a positive real scalar: the stop time. The simulation starts at time #strong[0];.
/ dt: an optional positive real scalar: the fixed integration step. When omitted it defaults to #strong[tStop \/ 1000];. Model Exchange usually needs a finer step than Co-Simulation because Nelson integrates the states itself.

== Output argument

/ result: a scalar structure with the fields #strong[time]; (N x 1), #strong[outputNames]; (1 x nOut) and #strong[outputs]; (N x nOut).

== Description

#strong[fmiModelExchange]; imports a #strong[Functional Mock-up Unit]; (FMU) that follows the #strong[FMI 2.0]; or #strong[3.0]; #strong[Model Exchange]; interface and integrates it with Nelson's own solver.

 The key difference with #strong[fmiCoSimulate]; is who owns the solver. A Co-Simulation FMU contains its own solver and is advanced with #strong[doStep];. A Model Exchange FMU exposes only the model equations (state derivatives, outputs and event indicators); the importing tool provides the solver. #strong[fmiModelExchange]; integrates the FMU's continuous states with a fixed-step fourth-order Runge-Kutta method and handles state events detected at step boundaries (entering event mode, running the discrete-update fixed point, and re-reading the continuous states).

 No external inputs are applied: the parameters and inputs keep their start values. An error is raised when the FMU does not provide the Model Exchange interface.


== Example

Integrate the Van der Pol oscillator as a Model Exchange FMU.

``````matlab
fmu = [modulepath('nflow_fmi', 'root'), '/examples/VanDerPol.fmu'];
r = fmiModelExchange(fmu, 20, 0.01);
plot(r.time, r.outputs); legend(r.outputNames);
``````


== See also

#nlink(<nflow_fmi:fmiCoSimulate>)[fmiCoSimulate];, #nlink(<nflow_fmi:fmiInfo>)[fmiInfo];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
