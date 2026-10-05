# modelicaToFmu

Compile a Modelica model to an FMU with OpenModelica.

## 📝 Syntax

- fmu = modelicaToFmu(model)
- fmu = modelicaToFmu(model, modelName)
- fmu = modelicaToFmu(model, modelName, name, value)

## 📥 Input argument

- model - a string scalar or character row vector: the path to a <b>.mo</b> file, or inline Modelica source text.
- modelName - a string: the Modelica class to build. Optional; when omitted it is the <b>.mo</b> base name (file input) or is parsed from the first model / block / class / package declaration (inline source).
- name, value - option pairs: <b>'FmiVersion'</b> (<b>'2.0'</b> default, or <b>'3.0'</b>), <b>'FmuType'</b> (<b>'cs'</b> default Co-Simulation, <b>'me'</b>, or <b>'me\_cs'</b>), <b>'Libraries'</b> (a string or cell of extra <b>.mo</b> files to load before building), <b>'Rebuild'</b> (<b>false</b> default; <b>true</b> ignores the cache).

## 📤 Output argument

- fmu - the path to the produced <b>.fmu</b> file.

## 📄 Description


<b>modelicaToFmu</b> compiles a Modelica model to a <b>Functional Mock-up Unit</b> (FMU) using an installed <b>OpenModelica</b> compiler and returns the path to the produced <b>.fmu</b>. It is the compilation half of the nflow Modelica bridge: a <b>modelica</b> block calls it so that the resulting FMU can be simulated through nflow's FMI path. 

The result is cached under the temporary directory, keyed by a hash of the source, the model name, the OpenModelica version and the FMU options, so an unchanged model is compiled only once. 

For a Modelica variable to become a usable output port after import, declare it <b>output</b> (for example <b>output Real vC;</b>); an ordinary variable is exported with causality <b>local</b>. 

Two typed errors can be raised. <b>Nelson:nflow\_fmi:modelicaUnavailable</b> when OpenModelica is missing or cannot export an FMU (the build is blocked); check the installation with <b>modelicaInfo</b> and set it with <b>modelicaConfigure</b>. <b>Nelson:nflow\_fmi:modelicaCompileFailed</b> when <b>omc</b> ran but did not produce the FMU; the message carries the OpenModelica diagnostics.

## 💡 Examples

Compile an inline first-order model.

```matlab
src = sprintf('model FO\n  output Real x(start = 1.0);\nequation\n  der(x) = -x;\nend FO;\n');
fmu = modelicaToFmu(src);
info = fmiInfo(fmu)
```
Compile a model from a .mo file.

```matlab
moFile = [modulepath('nflow_fmi'), '/examples/modelica/RLC.mo'];
fmu = modelicaToFmu(moFile, 'RLC')
```


## 🔗 See also

[modelicaInfo](../nflow_fmi/modelicaInfo.md), [modelicaConfigure](../nflow_fmi/modelicaConfigure.md), [fmiInfo](../nflow_fmi/fmiInfo.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
