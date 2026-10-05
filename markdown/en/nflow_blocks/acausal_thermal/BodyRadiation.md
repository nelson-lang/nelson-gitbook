# BodyRadiation


<p align="center">
<img src="BodyRadiation.svg" width="192"/>
</p>
Radiation (Stefan-Boltzmann): Q\_flow = Gr (T\_a^4 - T\_b^4).

## 📝 Syntax

- Block type: BodyRadiation

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Radiation (Stefan-Boltzmann): Q\_flow = Gr (T\_a^4 - T\_b^4). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Thermal (acausal) | 
| Type | <code>BodyRadiation</code> | 
| Label | BodyRadiation | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_thermal/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('BodyRadiation', 'Thermal', 'thermal', 'physicalIsland', ...
    'radiation', {{'a', 'a'}, {'b', 'b'}}, {{'Gr', 'Gr', 1, 'W/K4'}}, '', '', ...
    'Radiation (Stefan-Boltzmann): Q_flow = Gr (T_a^4 - T_b^4).');
```

</details>



## 🔗 See also

[HeatCapacitor](../../nflow_blocks/acausal_thermal/HeatCapacitor.md), [ThermalConductor](../../nflow_blocks/acausal_thermal/ThermalConductor.md), [ThermalResistor](../../nflow_blocks/acausal_thermal/ThermalResistor.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
