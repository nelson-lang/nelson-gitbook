# VCC


<p align="center">
<img src="VCC.svg" width="192"/>
</p>
Voltage-controlled current source: i = gain (v\_cp - v\_cn).

## 📝 Syntax

- Block type: VCC

## 📥 Input argument

- physical pins - 4 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Voltage-controlled current source: i = gain (v\_cp - v\_cn). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Electrical (acausal) | 
| Type | <code>VCC</code> | 
| Label | VCC | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('VCC', 'Electrical', 'electrical', 'physicalIsland', ...
    'vccs', {{'p', 'a'}, {'n', 'b'}, {'cp', 'c'}, {'cn', 'd'}}, ...
    {{'gain', 'gain', 1, 'S'}}, '', '', ...
    'Voltage-controlled current source: i = gain (v_cp - v_cn).');
```

</details>



## 🔗 See also

[Ground](../../nflow_blocks/acausal_electrical/Ground.md), [Resistor](../../nflow_blocks/acausal_electrical/Resistor.md), [HeatingResistor](../../nflow_blocks/acausal_electrical/HeatingResistor.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
