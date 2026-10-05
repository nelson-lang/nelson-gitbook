# modelicaConfigure

Set or query the OpenModelica used by the nflow Modelica bridge.

## 📝 Syntax

- modelicaConfigure(path)
- omc = modelicaConfigure()
- modelicaConfigure('')

## 📥 Input argument

- path - a string scalar or character row vector: an OpenModelica home directory (for example <b>'C:/Program Files/OpenModelica1.27.0-64bit'</b>) or the <b>omc</b> executable itself. An empty string clears the configured override.

## 📤 Output argument

- omc - the resolved path to the <b>omc</b> executable for the current configuration, or an empty string when none is found.

## 📄 Description


<b>modelicaConfigure</b> selects the <b>OpenModelica</b> compiler that the nflow Modelica bridge uses to turn a Modelica model into an FMU. Use it when auto-detection is wrong or when several OpenModelica versions are installed. 

The setting is persisted in the Nelson preferences directory and is <b>authoritative</b>: once configured, only that location is tried, so pointing nflow at a specific OpenModelica never silently resolves to a different one. When no override is configured, the location is auto-detected from the <b>NELSON\_OPENMODELICA\_HOME</b> and <b>OPENMODELICAHOME</b> environment variables, the standard install directories, then <b>PATH</b>. 

Called with no argument, <b>modelicaConfigure</b> returns the currently resolved <b>omc</b> path. Called with an empty string, it clears the override and returns to auto-detection. Setting a path that does not resolve to a runnable <b>omc</b> raises a warning but is still stored, so a machine can be pre-configured. 

The nflow editor writes the same preference through this function, so the graphical settings and the command line share one source of truth.

## 💡 Examples

Point nflow at a specific OpenModelica installation.

```matlab
modelicaConfigure('C:/Program Files/OpenModelica1.27.0-64bit');
info = modelicaInfo()
```
Return to auto-detection.

```matlab
modelicaConfigure('')
```


## 🔗 See also

[modelicaInfo](../nflow_fmi/modelicaInfo.md), [modelicaToFmu](../nflow_fmi/modelicaToFmu.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
