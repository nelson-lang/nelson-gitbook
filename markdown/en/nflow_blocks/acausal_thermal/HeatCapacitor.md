# HeatCapacitor


<p align="center">
<img src="HeatCapacitor.svg" width="192"/>
</p>
Lumped heat capacity: C dT/dt = Q\_flow (port referenced to 0).

## 📝 Syntax

- Block type: HeatCapacitor

## 📥 Input argument

- physical pins - 1 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Lumped heat capacity: C dT/dt = Q\_flow (port referenced to 0). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Thermal (acausal) | 
| Type | <code>HeatCapacitor</code> | 
| Label | HeatCapacitor | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_thermal/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('HeatCapacitor', 'Thermal', 'thermal', 'physicalIsland', ...
    'capacitor', {{'port', 'a'}}, ...
    {{'C', 'C', 1, 'J/K'}, {'T0', 'ic', 293.15, 'K'}}, '', '', ...
    'Lumped heat capacity: C dT/dt = Q_flow (port referenced to 0).');
```

</details>



## 🔗 See also

[ThermalConductor](../../nflow_blocks/acausal_thermal/ThermalConductor.md), [ThermalResistor](../../nflow_blocks/acausal_thermal/ThermalResistor.md), [ConvectiveResistor](../../nflow_blocks/acausal_thermal/ConvectiveResistor.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
