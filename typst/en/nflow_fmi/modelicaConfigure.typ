#import "nelson_help.typ": *

= modelicaConfigure <nflow_fmi:modelicaConfigure>

Set or query the OpenModelica used by the nflow Modelica bridge.

== Syntax

- #raw("modelicaConfigure(path)");
- #raw("omc = modelicaConfigure()");
- #raw("modelicaConfigure('')");

== Input argument

/ path: a string scalar or character row vector: an OpenModelica home directory (for example #strong['C:\/Program Files\/OpenModelica1.27.0-64bit'];) or the #strong[omc]; executable itself. An empty string clears the configured override.

== Output argument

/ omc: the resolved path to the #strong[omc]; executable for the current configuration, or an empty string when none is found.

== Description

#strong[modelicaConfigure]; selects the #strong[OpenModelica]; compiler that the nflow Modelica bridge uses to turn a Modelica model into an FMU. Use it when auto-detection is wrong or when several OpenModelica versions are installed.

 The setting is persisted in the Nelson preferences directory and is #strong[authoritative];: once configured, only that location is tried, so pointing nflow at a specific OpenModelica never silently resolves to a different one. When no override is configured, the location is auto-detected from the #strong[NELSON\_OPENMODELICA\_HOME]; and #strong[OPENMODELICAHOME]; environment variables, the standard install directories, then #strong[PATH];.

 Called with no argument, #strong[modelicaConfigure]; returns the currently resolved #strong[omc]; path. Called with an empty string, it clears the override and returns to auto-detection. Setting a path that does not resolve to a runnable #strong[omc]; raises a warning but is still stored, so a machine can be pre-configured.

 The nflow editor writes the same preference through this function, so the graphical settings and the command line share one source of truth.


== Examples

Point nflow at a specific OpenModelica installation.

``````matlab
modelicaConfigure('C:/Program Files/OpenModelica1.27.0-64bit');
info = modelicaInfo()
``````

Return to auto-detection.

``````matlab
modelicaConfigure('')
``````


== See also

#nlink(<nflow_fmi:modelicaInfo>)[modelicaInfo];, #nlink(<nflow_fmi:modelicaToFmu>)[modelicaToFmu];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
