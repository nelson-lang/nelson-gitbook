#import "nelson_help.typ": *

= NFlow.sspInfo <nflow_engine:ssp>

Inspect, import and export SSP (System Structure and Parameterization) archives.

== Syntax

- #raw("info = NFlow.sspInfo(sspFile)");
- #raw("nflowFile = NFlow.sspImport(sspFile, destinationDirectory)");
- #raw("sspFile = NFlow.sspExport(sspFile, components, connections)");
- #raw("sspFile = NFlow.sspExportDiagram(nflowFile, sspFile)");
- #raw("NFlow.writeSsv(ssvFile, parameterValues)");

== Input argument

/ sspFile: a character vector: path to an #strong[.ssp]; archive (a zip holding a #strong[SystemStructure.ssd]; and its component FMUs under #strong[resources\/];).
/ destinationDirectory: a character vector: an existing directory that receives the extracted component FMUs and the generated #strong[.nflow]; model.
/ nflowFile: a character vector: path to a #strong[.nflow]; diagram whose blocks are #strong[fmu]; blocks (as produced by #strong[NFlow.sspImport];), packaged back into an SSP by #strong[NFlow.sspExportDiagram];.
/ components: a struct array with fields #strong[name]; and #strong[model]; (the path to each component's #strong[.nflow]; model).
/ connections: a struct array with fields #strong[startElement];, #strong[startConnector];, #strong[endElement];, #strong[endConnector];. An empty #strong[startElement]; denotes a system input and an empty #strong[endElement]; a system output.

== Output argument

/ info: a structure with fields #strong[name];, #strong[systemConnectors]; (the parent system's own #strong[name];\/#strong[kind]; connectors), #strong[components]; (each #strong[name];, #strong[source];, #strong[type];, #strong[implementation];, #strong[parameterSources];) and #strong[connections]; (each #strong[startElement];, #strong[startConnector];, #strong[endElement];, #strong[endConnector];).
/ nflowFile: the path to the #strong[.nflow]; model written by #strong[NFlow.sspImport];.

== Description

SSP (#strong[System Structure and Parameterization];) is an open standard that packages several FMUs and the way their connectors are wired into a single #strong[.ssp]; archive.

 #strong[NFlow.sspInfo]; reads the archive's #strong[SystemStructure.ssd]; and reports the composition without loading any binary: the system name, its components and every connection between connectors.

 #strong[NFlow.sspImport]; wires each component into an nflow diagram: every FMI 3.0 Co-Simulation component becomes an #strong[fmu]; block, connectors are matched to ports by name, and a component output routed to a system output is exposed as a recordable sink. Parameter values bound to a component — through a #strong[.ssv]; (System Structure Parameter Values) file or embedded directly in the #strong[.ssd]; — are applied to its FMU block. Components that are not FMI 3.0 are reported with their declared version rather than failing obscurely.

 #strong[NFlow.sspExport]; does the reverse: it exports each component model to an FMU, lists its connectors and writes a #strong[SystemStructure.ssd]; describing the composition. Connections that reference the parent system (an empty start or end element) are declared as system-level connectors.

 #strong[NFlow.sspExportDiagram]; is the exact inverse of #strong[NFlow.sspImport];: it takes a diagram whose blocks are #strong[fmu]; blocks and re-emits an SSP that references those same component FMUs directly (without re-exporting them). Wires between FMU blocks become connections — port indices are mapped back to connector names by inspection — and each #strong[To Workspace]; sink fed by an FMU output becomes a system output connector. Importing an SSP and exporting the resulting diagram round-trips the composition's components, its component-to-component links and its system outputs (a system input has no driver block after import, so it is not reproduced). Any parameter overrides carried on an FMU block (as applied by #strong[NFlow.sspImport]; from a #strong[.ssv];) are written back out as a bound #strong[.ssv];, so parameter values round-trip too.

 #strong[NFlow.writeSsv]; writes a parameter name\/value struct as a #strong[.ssv]; file (the inverse of #strong[NFlow.readSsv];): #strong[logical]; values become Boolean, integers Integer, everything else Real.


== Bibliography

Modelica Association, System Structure and Parameterization (SSP) standard, https:\/\/ssp-standard.org

== Examples

Inspect the bundled controlled-drivetrain composition

``````matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
info = NFlow.sspInfo(ssp);
disp(info.name);
disp({info.components.name});
disp(numel(info.connections));
``````

Round-trip a composition: SSP -\> diagram -\> SSP

``````matlab
ssp = [modulepath('nflow_fmi', 'root'), '/examples/ControlledDrivetrain.ssp'];
work = [tempdir(), 'ssp_roundtrip'];
mkdir(work);
nflowFile = NFlow.sspImport(ssp, work);
outSsp = NFlow.sspExportDiagram(nflowFile, [work, filesep, 'RoundTrip.ssp']);
info = NFlow.sspInfo(outSsp);
disp({info.components.name});
``````


== See also

#nlink(<nflow_engine:sim>)[sim];, #nlink(<nflow_fmi:fmiCoSimulate>)[fmiCoSimulate];, #nlink(<nflow_fmi:fmiInfo>)[fmiInfo];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [NFlow.sspExportDiagram: package a diagram of FMU blocks back into an SSP; NFlow.writeSsv exports parameter values (SSV round-trip)],
)

// Author: Allan CORNET
