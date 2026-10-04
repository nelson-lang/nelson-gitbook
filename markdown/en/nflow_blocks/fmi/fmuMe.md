# fmuMe

<p align="center">
<img src="fmu.svg"/>
</p>
Integrates a model-exchange FMU with the NFlow solver.

## 📝 Syntax

- Block type: fmuMe

## 📄 Description

The <b>FMU (ME)</b> block loads the model-exchange archive selected by <b>path</b>. NFlow evaluates its derivatives, zero crossings, and events while the selected NFlow solver integrates the continuous states.

After import, ports and parameters follow the variables exposed by the FMU model description.

## 🔗 See also

[fmuToBlock](../../nflow_fmi/fmuToBlock.md).
