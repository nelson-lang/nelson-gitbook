# IdealDiode


<p align="center">
<img src="IdealDiode.svg" width="192"/>
</p>
Ideal diode switching at the knee voltage Vknee: off below it (leak conductance Goff), on above it (on-resistance Ron in series with Vknee); the mode flip is an event.

## 📝 Syntax

- Block type: IdealDiode

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Ideal diode switching at the knee voltage Vknee: off below it (leak conductance Goff), on above it (on-resistance Ron in series with Vknee); the mode flip is an event. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Electrical (acausal) | 
| Type | <code>IdealDiode</code> | 
| Label | IdealDiode | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('IdealDiode', 'Electrical', 'electrical', 'physicalIsland', ...
    'idealDiode', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Ron', 'Ron', 1e-3, 'ohm'}, {'Goff', 'Goff', 1e-6, 'S'}, {'Vknee', 'Vknee', 0, 'V'}}, '', '', ...
    'Ideal diode switching at the knee voltage Vknee: off below it (leak conductance Goff), on above it (on-resistance Ron in series with Vknee); the mode flip is an event.');
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
