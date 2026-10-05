# VariableCapacitor


<p align="center">
<img src="VariableCapacitor.svg" width="192"/>
</p>
Capacitor whose capacitance C is set by a signal (exact charge Q formulation).

## 📝 Syntax

- Block type: VariableCapacitor

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 1 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Capacitor whose capacitance C is set by a signal (exact charge Q formulation). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Electrical (acausal) | 
| Type | <code>VariableCapacitor</code> | 
| Label | VariableCapacitor | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('VariableCapacitor', 'Electrical', 'electrical', 'physicalIsland', ...
    'variableCapacitor', {{'p', 'a'}, {'n', 'b'}}, {{'q0', 'ic', 0, 'C'}}, 'C', '', ...
    'Capacitor whose capacitance C is set by a signal (exact charge Q formulation).');
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
