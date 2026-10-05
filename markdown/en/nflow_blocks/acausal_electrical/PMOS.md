# PMOS


<p align="center">
<img src="PMOS.svg" width="192"/>
</p>
P-channel MOSFET (square law): drain, gate and source pins.

## 📝 Syntax

- Block type: PMOS

## 📥 Input argument

- physical pins - 3 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


P-channel MOSFET (square law): drain, gate and source pins. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Electrical (acausal) | 
| Type | <code>PMOS</code> | 
| Label | PMOS | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('PMOS', 'Electrical', 'electrical', 'physicalIsland', ...
    'pmos', {{'D', 'a'}, {'G', 'c'}, {'S', 'b'}}, ...
    {{'Beta', 'Beta', 1e-3, 'A/V^2'}, {'Vt', 'Vt', 1, 'V'}}, '', '', ...
    'P-channel MOSFET (square law): drain, gate and source pins.');
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
