# IdealOpAmp


<p align="center">
<img src="IdealOpAmp.svg" width="192"/>
</p>
Ideal op-amp (nullor): virtual short e\_+ = e\_-, output current free.

## 📝 Syntax

- Block type: IdealOpAmp

## 📥 Input argument

- physical pins - 3 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Ideal op-amp (nullor): virtual short e\_+ = e\_-, output current free. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Electrical (acausal) | 
| Type | <code>IdealOpAmp</code> | 
| Label | IdealOpAmp | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('IdealOpAmp', 'Electrical', 'electrical', 'physicalIsland', ...
    'opAmp', {{'in_p', 'a'}, {'in_n', 'b'}, {'out', 'c'}}, {}, '', '', ...
    'Ideal op-amp (nullor): virtual short e_+ = e_-, output current free.');
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
