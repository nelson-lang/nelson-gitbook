# fmuMe


<p align="center">
<img src="fmu.svg" width="80"/>
</p>
Integrates a model-exchange FMU with the NFlow solver.

## 📝 Syntax

- Block type: fmuMe

## 📄 Description


The WebAssembly browser version supports FMI 3.0 Model Exchange components packaged under binaries/wasm32-wasip2. NFlow integrates their states and handles zero crossings and state reset events. The bundled reference demos include Wasm binaries. 

The <b>FMU (ME)</b> block loads the model-exchange archive selected by <b>path</b>. NFlow evaluates its derivatives, zero crossings, and events while the selected NFlow solver integrates the continuous states. 

After import, ports and parameters follow the variables exposed by the FMU model description. 


## 🔗 See also

[fmuToBlock](../../nflow_fmi/fmuToBlock.md).