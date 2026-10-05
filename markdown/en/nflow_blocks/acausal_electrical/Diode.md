# Diode


<p align="center">
<img src="Diode.svg" width="192"/>
</p>
Exponential (Shockley) diode: i = Is (exp(vd/Vt) - 1).

## 📝 Syntax

- Block type: Diode

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Exponential (Shockley) diode: i = Is (exp(vd/Vt) - 1). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Electrical (acausal) | 
| Type | <code>Diode</code> | 
| Label | Diode | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Diode', 'Electrical', 'electrical', 'physicalIsland', ...
    'diode', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Is', 'Is', 1e-9, 'A'}, {'Vt', 'Vt', 0.025, 'V'}}, '', '', ...
    'Exponential (Shockley) diode: i = Is (exp(vd/Vt) - 1).');
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
