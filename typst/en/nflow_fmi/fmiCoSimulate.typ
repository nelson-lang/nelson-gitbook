#import "nelson_help.typ": *

= fmiCoSimulate <nflow_fmi:fmiCoSimulate>

Run a fixed-step Co-Simulation of an FMI 2.0 or 3.0 FMU.

== Syntax

- #raw("result = fmiCoSimulate(fmu, tStop)");
- #raw("result = fmiCoSimulate(fmu, tStop, dt)");
- #raw("result = fmiCoSimulate(fmu, tStop, dt, inputs)");

== Input argument

/ fmu: a string scalar or character row vector: the path to a #strong[.fmu]; archive, or to an already-extracted FMU directory. The FMU must provide the Co-Simulation interface (see #strong[fmiInfo];).
/ tStop: a positive real scalar: the stop time of the simulation, in the FMU time unit (seconds). The simulation starts at time #strong[0];.
/ dt: an optional positive real scalar: the communication step size. When omitted it defaults to #strong[tStop \/ 100]; (one hundred steps). It is clamped to #strong[tStop]; when larger.
/ inputs: an optional scalar structure whose field names are FMU #strong[Float64]; input variables and whose values are the constant values held on those inputs for the whole run, for example #strong[struct('u', 2.5)];. Inputs not listed keep their FMU start values.

== Output argument

/ result: a scalar structure holding the recorded trajectory, with the fields #strong[time];, #strong[outputNames];, and #strong[outputs]; described below.

== Description

#strong[fmiCoSimulate]; runs a #strong[Co-Simulation]; of a #strong[Functional Mock-up Unit]; (FMU) that follows the #strong[FMI 2.0]; or #strong[3.0]; standard and returns the values of every #strong[Float64]; output at each communication point.

 The FMU is instantiated, initialized between time #strong[0]; and #strong[tStop];, and then advanced with a fixed communication step #strong[dt];. At the start of each step the current #strong[Float64]; outputs are recorded; the FMU is then advanced by one step. The loop stops at #strong[tStop];, or earlier if the FMU requests termination. The FMU is always terminated and freed before the function returns, including on error.

 No external inputs are applied: the parameters and inputs of the FMU keep the start values declared in its model description. The function therefore reproduces the free response of the model as packaged. Applying custom inputs is not yet supported by this entry point.

 The #strong[fmu]; argument accepts either a #strong[.fmu]; archive or an already-extracted directory. A #strong[.fmu]; archive is unpacked with a ZIP-slip-hardened extractor into a fresh temporary directory that is removed automatically when the function returns; entries with absolute paths, drive letters, or #strong[..]; traversal are rejected.

 The returned structure #strong[result]; has the following fields:

 

#table(
  columns: 3,
  [Field], [Size], [Details], 
  [time], [N x 1], [the communication points, starting at #strong[0]; and strictly increasing by #strong[dt]; (the last point may be shorter when the FMU terminates early).], 
  [outputNames], [1 x nOut], [a cell of the names of the #strong[Float64]; output variables, in declaration order.], 
  [outputs], [N x nOut], [the recorded output values; column #strong[j]; is the trajectory of #strong[outputNames{j}];, row #strong[i]; corresponds to #strong[time(i)];.], 
)
 The number of rows #strong[N]; is #strong[floor(tStop \/ dt) + 1]; for a run that completes at #strong[tStop];. When the FMU declares no #strong[Float64]; output, #strong[outputNames]; is empty and #strong[outputs]; has zero columns while #strong[time]; is still returned.

 Use #strong[fmiInfo]; first to inspect the variables and confirm the Co-Simulation interface. An error is raised when #strong[tStop]; is not positive, when the FMU does not support Co-Simulation, or when any FMI call fails.


== Examples

Run a Co-Simulation with the default step size.

``````matlab
result = fmiCoSimulate('VanDerPol.fmu', 20)
``````

Run with an explicit communication step and plot the outputs.

``````matlab
r = fmiCoSimulate('VanDerPol.fmu', 20, 0.01);
plot(r.time, r.outputs);
legend(r.outputNames);
xlabel('time');
title('FMU Co-Simulation outputs');
``````

Extract a single named output from the result.

``````matlab
r = fmiCoSimulate('VanDerPol.fmu', 20, 0.01);
col = find(strcmp(r.outputNames, 'x0'));
x0 = r.outputs(:, col);
``````

Drive an FMU input with a constant value (bundled Feedthrough FMU).

``````matlab
fmu = [modulepath('nflow_fmi', 'root'), '/examples/Feedthrough.fmu'];
r = fmiCoSimulate(fmu, 2, 0.1, struct('Float64_continuous_input', 2.5));
col = find(strcmp(r.outputNames, 'Float64_continuous_output'));
r.outputs(end, col)
``````


== See also

#nlink(<nflow_fmi:fmiInfo>)[fmiInfo];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
