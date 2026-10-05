# PNP


<p align="center">
<img src="PNP.svg" width="192"/>
</p>
PNP bipolar transistor (Ebers-Moll): collector, base and emitter pins.

## 📝 Syntax

- Block type: PNP

## 📥 Input argument

- physical pins - 3 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


PNP bipolar transistor (Ebers-Moll): collector, base and emitter pins. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Electrical (acausal) | 
| Type | <code>PNP</code> | 
| Label | PNP | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('PNP', 'Electrical', 'electrical', 'physicalIsland', ...
    'pnp', {{'C', 'a'}, {'B', 'c'}, {'E', 'b'}}, ...
    {{'Is', 'Is', 1e-16, 'A'}, {'Vt', 'Vt', 0.025, 'V'}, ...
     {'Bf', 'Bf', 100, '1'}, {'Br', 'Br', 1, '1'}}, '', '', ...
    'PNP bipolar transistor (Ebers-Moll): collector, base and emitter pins.');
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
