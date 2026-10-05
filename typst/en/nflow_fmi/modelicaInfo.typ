#import "nelson_help.typ": *

= modelicaInfo <nflow_fmi:modelicaInfo>

Report the OpenModelica used by the nflow Modelica bridge.

== Syntax

- #raw("info = modelicaInfo()");

== Output argument

/ info: a scalar structure describing the OpenModelica installation, with the fields listed below.

== Description

#strong[modelicaInfo]; reports the #strong[OpenModelica]; compiler (#strong[omc];) that the nflow Modelica bridge will use. A #strong[modelica]; block compiles a Modelica model to an FMU with OpenModelica and then simulates it through nflow's FMI path; #strong[modelicaInfo]; tells you whether that is possible and which OpenModelica is selected.

 The returned structure #strong[info]; has the following fields:

 

#table(
  columns: 3,
  [Field], [Class], [Details], 
  [available], [logical], [#strong[true]; when an #strong[omc]; executable was found and runs.], 
  [capable], [logical], [#strong[true]; when OpenModelica is not only present but able to export an FMU (the FMI export runtime is installed). A model simulates only when #strong[capable]; is #strong[true];.], 
  [omc], [char], [the resolved path to the #strong[omc]; executable, or an empty string.], 
  [home], [char], [the OpenModelica home directory, or an empty string.], 
  [version], [char], [the version string reported by #strong[omc];.], 
  [reason], [char], [a human-readable status; when not usable, it explains why and how to fix it.], 
)
 Presence is not capability: an #strong[omc]; executable can run yet be unable to build an FMU when its installation is missing the FMI export runtime. In that case #strong[available]; is #strong[true]; but #strong[capable]; is #strong[false];, and a #strong[modelica]; block blocks the simulation with a clear message.

 The OpenModelica location is resolved from, in order: a path configured with #strong[modelicaConfigure]; (authoritative when set), the #strong[NELSON\_OPENMODELICA\_HOME]; environment variable (Nelson-scoped), the #strong[OPENMODELICAHOME]; environment variable, the standard install directories, then #strong[PATH];.


== Example

Check whether a Modelica model can be simulated.

``````matlab
info = modelicaInfo();
if ~info.capable
  disp(info.reason);
end
``````


== See also

#nlink(<nflow_fmi:modelicaConfigure>)[modelicaConfigure];, #nlink(<nflow_fmi:modelicaToFmu>)[modelicaToFmu];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
