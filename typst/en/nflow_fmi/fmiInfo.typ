#import "nelson_help.typ": *

= fmiInfo <nflow_fmi:fmiInfo>

Read the model description of an FMI 2.0 or 3.0 FMU.

== Syntax

- #raw("info = fmiInfo(fmu)");

== Input argument

/ fmu: a string scalar or character row vector: the path to a #strong[.fmu]; archive, or to an already-extracted FMU directory (a folder that contains a #strong[modelDescription.xml]; file at its root).

== Output argument

/ info: a scalar structure describing the FMU, with the fields listed below.

== Description

#strong[fmiInfo]; parses the #strong[modelDescription.xml]; of a #strong[Functional Mock-up Unit]; (FMU) that follows the #strong[FMI 2.0]; or #strong[3.0]; standard and returns its metadata as a Nelson structure. It performs no simulation: it only reads the static description, so it is inexpensive and safe to call for inspection before setting up a run.

 The #strong[fmu]; argument may be given in two forms:

 

- a path to a #strong[.fmu]; archive. The archive (a ZIP container) is unpacked with a ZIP-slip-hardened extractor into a fresh temporary directory, which is removed automatically before #strong[fmiInfo]; returns. Entries with absolute paths, drive letters, or #strong[..]; traversal are rejected.


- a path to an already-extracted FMU directory. In that case nothing is unpacked and the directory is read in place.

 The returned structure #strong[info]; has the following fields:

 

#table(
  columns: 3,
  [Field], [Class], [Details], 
  [modelIdentifier], [char], [the C model identifier declared by the FMU (used to locate its binary).], 
  [fmiVersion], [char], [the FMI version string reported by the FMU (for example #strong[2.0]; or #strong[3.0];).], 
  [coSimulation], [logical], [#strong[true]; when the FMU provides the Co-Simulation interface (required by #strong[fmiCoSimulate];).], 
  [modelExchange], [logical], [#strong[true]; when the FMU provides the Model Exchange interface.], 
  [scheduledExecution], [logical], [#strong[true]; when the FMU provides the Scheduled Execution interface.], 
  [names], [cell of char], [the names of the scalar variables declared by the FMU, in declaration order.], 
  [valueReferences], [double], [the value reference of each variable (the numeric handle used by the FMI get\/set calls).], 
  [causalities], [cell of char], [the causality of each variable: one of #strong[parameter];, #strong[calculatedParameter];, #strong[input];, #strong[output];, #strong[local];, #strong[independent];, or #strong[structuralParameter];.], 
  [dataTypes], [cell of char], [the declared data type of each variable (for example #strong[Float64];, #strong[Int32];, #strong[Boolean];, #strong[String];).], 
  [descriptions], [cell of char], [the description string of each variable (empty when none is declared).], 
  [startValues], [double], [the Float64 start value of each variable, or #strong[NaN]; when the variable declares no start value.], 
)
 The four variable fields (#strong[names];, #strong[valueReferences];, #strong[causalities];, #strong[dataTypes];) are aligned element by element: the #strong[k];-th entry of each describes the same variable. To list the outputs of an FMU, select the entries whose causality is #strong[output];; those are exactly the signals recorded by #strong[fmiCoSimulate];.

 An error is raised when the path does not exist, when the archive cannot be extracted, or when the FMU does not contain a readable #strong[modelDescription.xml];.


== Examples

Read the model description of an FMU archive.

``````matlab
info = fmiInfo('VanDerPol.fmu')
``````

List only the output variables of the FMU.

``````matlab
info = fmiInfo('VanDerPol.fmu');
isOutput = strcmp(info.causalities, 'output');
outputs = info.names(isOutput)
``````

Check that an FMU supports Co-Simulation before running it.

``````matlab
info = fmiInfo('VanDerPol.fmu');
if ~info.coSimulation
  error('This FMU does not provide the Co-Simulation interface.');
end
``````


== See also

#nlink(<nflow_fmi:fmiCoSimulate>)[fmiCoSimulate];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
