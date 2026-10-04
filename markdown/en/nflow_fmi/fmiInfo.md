# fmiInfo

Read the model description of an FMI 2.0 or 3.0 FMU.

## 📝 Syntax

- info = fmiInfo(fmu)

## 📥 Input argument

- fmu - a string scalar or character row vector: the path to a <b>.fmu</b> archive, or to an already-extracted FMU directory (a folder that contains a <b>modelDescription.xml</b> file at its root).

## 📤 Output argument

- info - a scalar structure describing the FMU, with the fields listed below.

## 📄 Description

<b>fmiInfo</b> parses the <b>modelDescription.xml</b> of a <b>Functional Mock-up Unit</b> (FMU) that follows the <b>FMI 2.0</b> or <b>3.0</b> standard and returns its metadata as a Nelson structure. It performs no simulation: it only reads the static description, so it is inexpensive and safe to call for inspection before setting up a run.

The <b>fmu</b> argument may be given in two forms:

-

a path to a <b>.fmu</b> archive. The archive (a ZIP container) is unpacked with a ZIP-slip-hardened extractor into a fresh temporary directory, which is removed automatically before <b>fmiInfo</b> returns. Entries with absolute paths, drive letters, or <b>..</b> traversal are rejected.

-

a path to an already-extracted FMU directory. In that case nothing is unpacked and the directory is read in place.

The returned structure <b>info</b> has the following fields:

| Field              | Class        | Details                                                                                                                                                       |
| ------------------ | ------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| modelIdentifier    | char         | the C model identifier declared by the FMU (used to locate its binary).                                                                                       |
| fmiVersion         | char         | the FMI version string reported by the FMU (for example **2.0** or **3.0**).                                                                                  |
| coSimulation       | logical      | **true** when the FMU provides the Co-Simulation interface (required by **fmiCoSimulate**).                                                                   |
| modelExchange      | logical      | **true** when the FMU provides the Model Exchange interface.                                                                                                  |
| scheduledExecution | logical      | **true** when the FMU provides the Scheduled Execution interface.                                                                                             |
| names              | cell of char | the names of the scalar variables declared by the FMU, in declaration order.                                                                                  |
| valueReferences    | double       | the value reference of each variable (the numeric handle used by the FMI get/set calls).                                                                      |
| causalities        | cell of char | the causality of each variable: one of **parameter**, **calculatedParameter**, **input**, **output**, **local**, **independent**, or **structuralParameter**. |
| dataTypes          | cell of char | the declared data type of each variable (for example **Float64**, **Int32**, **Boolean**, **String**).                                                        |
| descriptions       | cell of char | the description string of each variable (empty when none is declared).                                                                                        |
| startValues        | double       | the Float64 start value of each variable, or **NaN** when the variable declares no start value.                                                               |

The four variable fields (<b>names</b>, <b>valueReferences</b>, <b>causalities</b>, <b>dataTypes</b>) are aligned element by element: the <b>k</b>-th entry of each describes the same variable. To list the outputs of an FMU, select the entries whose causality is <b>output</b>; those are exactly the signals recorded by <b>fmiCoSimulate</b>.

An error is raised when the path does not exist, when the archive cannot be extracted, or when the FMU does not contain a readable <b>modelDescription.xml</b>.

## 💡 Examples

Read the model description of an FMU archive.

```matlab
info = fmiInfo('VanDerPol.fmu')
```

List only the output variables of the FMU.

```matlab
info = fmiInfo('VanDerPol.fmu');
isOutput = strcmp(info.causalities, 'output');
outputs = info.names(isOutput)
```

Check that an FMU supports Co-Simulation before running it.

```matlab
info = fmiInfo('VanDerPol.fmu');
if ~info.coSimulation
  error('This FMU does not provide the Co-Simulation interface.');
end
```

## 🔗 See also

[fmiCoSimulate](../nflow_fmi/fmiCoSimulate.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
