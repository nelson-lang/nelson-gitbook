# modelicaInfo

Report the OpenModelica used by the nflow Modelica bridge.

## 📝 Syntax

- info = modelicaInfo()

## 📤 Output argument

- info - a scalar structure describing the OpenModelica installation, with the fields listed below.

## 📄 Description


<b>modelicaInfo</b> reports the <b>OpenModelica</b> compiler (<b>omc</b>) that the nflow Modelica bridge will use. A <b>modelica</b> block compiles a Modelica model to an FMU with OpenModelica and then simulates it through nflow's FMI path; <b>modelicaInfo</b> tells you whether that is possible and which OpenModelica is selected. 

The returned structure <b>info</b> has the following fields: 

| Field | Class | Details | 
| --- | --- | --- | 
| available | logical | **true** when an **omc** executable was found and runs. | 
| capable | logical | **true** when OpenModelica is not only present but able to export an FMU (the FMI export runtime is installed). A model simulates only when **capable** is **true**. | 
| omc | char | the resolved path to the **omc** executable, or an empty string. | 
| home | char | the OpenModelica home directory, or an empty string. | 
| version | char | the version string reported by **omc**. | 
| reason | char | a human-readable status; when not usable, it explains why and how to fix it. | 

 

Presence is not capability: an <b>omc</b> executable can run yet be unable to build an FMU when its installation is missing the FMI export runtime. In that case <b>available</b> is <b>true</b> but <b>capable</b> is <b>false</b>, and a <b>modelica</b> block blocks the simulation with a clear message. 

The OpenModelica location is resolved from, in order: a path configured with <b>modelicaConfigure</b> (authoritative when set), the <b>NELSON\_OPENMODELICA\_HOME</b> environment variable (Nelson-scoped), the <b>OPENMODELICAHOME</b> environment variable, the standard install directories, then <b>PATH</b>.

## 💡 Example

Check whether a Modelica model can be simulated.

```matlab
info = modelicaInfo();
if ~info.capable
  disp(info.reason);
end
```


## 🔗 See also

[modelicaConfigure](../nflow_fmi/modelicaConfigure.md), [modelicaToFmu](../nflow_fmi/modelicaToFmu.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
