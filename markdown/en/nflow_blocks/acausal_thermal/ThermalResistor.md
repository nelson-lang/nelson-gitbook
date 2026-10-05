# ThermalResistor


<p align="center">
<img src="ThermalResistor.svg" width="192"/>
</p>
Thermal resistor: Q\_flow = (T\_a - T\_b) / R.

## 📝 Syntax

- Block type: ThermalResistor

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Thermal resistor: Q\_flow = (T\_a - T\_b) / R. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Thermal (acausal) | 
| Type | <code>ThermalResistor</code> | 
| Label | ThermalResistor | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_thermal/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('ThermalResistor', 'Thermal', 'thermal', 'physicalIsland', ...
    'resistor', {{'a', 'a'}, {'b', 'b'}}, {{'R', 'R', 1, 'K/W'}}, '', '', ...
    'Thermal resistor: Q_flow = (T_a - T_b) / R.');
```

</details>



## 🔗 See also

[HeatCapacitor](../../nflow_blocks/acausal_thermal/HeatCapacitor.md), [ThermalConductor](../../nflow_blocks/acausal_thermal/ThermalConductor.md), [ConvectiveResistor](../../nflow_blocks/acausal_thermal/ConvectiveResistor.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
