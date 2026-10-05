#import "nelson_help.typ": *

= modelicaToFmu <nflow_fmi:modelicaToFmu>

Compile a Modelica model to an FMU with OpenModelica.

== Syntax

- #raw("fmu = modelicaToFmu(model)");
- #raw("fmu = modelicaToFmu(model, modelName)");
- #raw("fmu = modelicaToFmu(model, modelName, name, value)");

== Input argument

/ model: a string scalar or character row vector: the path to a #strong[.mo]; file, or inline Modelica source text.
/ modelName: a string: the Modelica class to build. Optional; when omitted it is the #strong[.mo]; base name (file input) or is parsed from the first model \/ block \/ class \/ package declaration (inline source).
/ name, value: option pairs: #strong['FmiVersion']; (#strong['2.0']; default, or #strong['3.0'];), #strong['FmuType']; (#strong['cs']; default Co-Simulation, #strong['me'];, or #strong['me\_cs'];), #strong['Libraries']; (a string or cell of extra #strong[.mo]; files to load before building), #strong['Rebuild']; (#strong[false]; default; #strong[true]; ignores the cache).

== Output argument

/ fmu: the path to the produced #strong[.fmu]; file.

== Description

#strong[modelicaToFmu]; compiles a Modelica model to a #strong[Functional Mock-up Unit]; (FMU) using an installed #strong[OpenModelica]; compiler and returns the path to the produced #strong[.fmu];. It is the compilation half of the nflow Modelica bridge: a #strong[modelica]; block calls it so that the resulting FMU can be simulated through nflow's FMI path.

 The result is cached under the temporary directory, keyed by a hash of the source, the model name, the OpenModelica version and the FMU options, so an unchanged model is compiled only once.

 For a Modelica variable to become a usable output port after import, declare it #strong[output]; (for example #strong[output Real vC;];); an ordinary variable is exported with causality #strong[local];.

 Two typed errors can be raised. #strong[Nelson:nflow\_fmi:modelicaUnavailable]; when OpenModelica is missing or cannot export an FMU (the build is blocked); check the installation with #strong[modelicaInfo]; and set it with #strong[modelicaConfigure];. #strong[Nelson:nflow\_fmi:modelicaCompileFailed]; when #strong[omc]; ran but did not produce the FMU; the message carries the OpenModelica diagnostics.


== Examples

Compile an inline first-order model.

``````matlab
src = sprintf('model FO\n  output Real x(start = 1.0);\nequation\n  der(x) = -x;\nend FO;\n');
fmu = modelicaToFmu(src);
info = fmiInfo(fmu)
``````

Compile a model from a .mo file.

``````matlab
moFile = [modulepath('nflow_fmi'), '/examples/modelica/RLC.mo'];
fmu = modelicaToFmu(moFile, 'RLC')
``````


== See also

#nlink(<nflow_fmi:modelicaInfo>)[modelicaInfo];, #nlink(<nflow_fmi:modelicaConfigure>)[modelicaConfigure];, #nlink(<nflow_fmi:fmiInfo>)[fmiInfo];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
