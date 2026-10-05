# NFlow.sspInfo

Inspect, import and export SSP (System Structure and Parameterization) archives.

## 📝 Syntax

- info = NFlow.sspInfo(sspFile)
- nflowFile = NFlow.sspImport(sspFile, destinationDirectory)
- sspFile = NFlow.sspExport(sspFile, components, connections)
- sspFile = NFlow.sspExportDiagram(nflowFile, sspFile)
- NFlow.writeSsv(ssvFile, parameterValues)

## 📥 Input argument

- sspFile - a character vector: path to an <b>.ssp</b> archive (a zip holding a <b>SystemStructure.ssd</b> and its component FMUs under <b>resources/</b>).
- destinationDirectory - a character vector: an existing directory that receives the extracted component FMUs and the generated <b>.nflow</b> model.
- nflowFile - a character vector: path to a <b>.nflow</b> diagram whose blocks are <b>fmu</b> blocks (as produced by <b>NFlow.sspImport</b>), packaged back into an SSP by <b>NFlow.sspExportDiagram</b>.
- components - a struct array with fields <b>name</b> and <b>model</b> (the path to each component's <b>.nflow</b> model).
- connections - a struct array with fields <b>startElement</b>, <b>startConnector</b>, <b>endElement</b>, <b>endConnector</b>. An empty <b>startElement</b> denotes a system input and an empty <b>endElement</b> a system output.

## 📤 Output argument

- info - a structure with fields <b>name</b>, <b>systemConnectors</b> (the parent system's own <b>name</b>/<b>kind</b> connectors), <b>components</b> (each <b>name</b>, <b>source</b>, <b>type</b>, <b>implementation</b>, <b>parameterSources</b>) and <b>connections</b> (each <b>startElement</b>, <b>startConnector</b>, <b>endElement</b>, <b>endConnector</b>).
- nflowFile - the path to the <b>.nflow</b> model written by <b>NFlow.sspImport</b>.

## 📄 Description


SSP (<b>System Structure and Parameterization</b>) is an open standard that packages several FMUs and the way their connectors are wired into a single <b>.ssp</b> archive. 

<b>NFlow.sspInfo</b> reads the archive's <b>SystemStructure.ssd</b> and reports the composition without loading any binary: the system name, its components and every connection between connectors. 

<b>NFlow.sspImport</b> wires each component into an nflow diagram: every FMI 3.0 Co-Simulation component becomes an <b>fmu</b> block, connectors are matched to ports by name, and a component output routed to a system output is exposed as a recordable sink. Parameter values bound to a component — through a <b>.ssv</b> (System Structure Parameter Values) file or embedded directly in the <b>.ssd</b> — are applied to its FMU block. Components that are not FMI 3.0 are reported with their declared version rather than failing obscurely. 

<b>NFlow.sspExport</b> does the reverse: it exports each component model to an FMU, lists its connectors and writes a <b>SystemStructure.ssd</b> describing the composition. Connections that reference the parent system (an empty start or end element) are declared as system-level connectors. 

<b>NFlow.sspExportDiagram</b> is the exact inverse of <b>NFlow.sspImport</b>: it takes a diagram whose blocks are <b>fmu</b> blocks and re-emits an SSP that references those same component FMUs directly (without re-exporting them). Wires between FMU blocks become connections — port indices are mapped back to connector names by inspection — and each <b>To Workspace</b> sink fed by an FMU output becomes a system output connector. Importing an SSP and exporting the resulting diagram round-trips the composition's components, its component-to-component links and its system outputs (a system input has no driver block after import, so it is not reproduced). Any parameter overrides carried on an FMU block (as applied by <b>NFlow.sspImport</b> from a <b>.ssv</b>) are written back out as a bound <b>.ssv</b>, so parameter values round-trip too. 

<b>NFlow.writeSsv</b> writes a parameter name/value struct as a <b>.ssv</b> file (the inverse of <b>NFlow.readSsv</b>): <b>logical</b> values become Boolean, integers Integer, everything else Real.

## 📚 Bibliography

Modelica Association, System Structure and Parameterization (SSP) standard, https://ssp-standard.org

## 💡 Examples

Inspect the bundled controlled-drivetrain composition

```matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
info = NFlow.sspInfo(ssp);
disp(info.name);
disp({info.components.name});
disp(numel(info.connections));
```
Round-trip a composition: SSP -> diagram -> SSP

```matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
work = [tempdir(), 'ssp_roundtrip'];
mkdir(work);
nflowFile = NFlow.sspImport(ssp, work);
outSsp = NFlow.sspExportDiagram(nflowFile, [work, filesep, 'RoundTrip.ssp']);
info = NFlow.sspInfo(outSsp);
disp({info.components.name});
```


## 🔗 See also

[sim](../nflow_engine/sim.md), [fmiCoSimulate](../nflow_fmi/fmiCoSimulate.md), [fmiInfo](../nflow_fmi/fmiInfo.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | NFlow.sspExportDiagram: package a diagram of FMU blocks back into an SSP; NFlow.writeSsv exports parameter values (SSV round-trip) |

<!--
## 👤 Author

Allan CORNET
-->
