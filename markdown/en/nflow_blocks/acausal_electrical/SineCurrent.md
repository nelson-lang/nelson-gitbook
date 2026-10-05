# SineCurrent


<p align="center">
<img src="SineCurrent.svg" width="192"/>
</p>
Sine current source: i = Amplitude sin(2 pi Frequency t + Phase).

## 📝 Syntax

- Block type: SineCurrent

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Sine current source: i = Amplitude sin(2 pi Frequency t + Phase). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Electrical (acausal) | 
| Type | <code>SineCurrent</code> | 
| Label | SineCurrent | 
| Solver | Lowered to <code>physicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_electrical/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('SineCurrent', 'Electrical', 'electrical', 'physicalIsland', ...
    'isource', {{'p', 'a'}, {'n', 'b'}}, ...
    {{'Amplitude', 'Amplitude', 1, 'A'}, {'Frequency', 'Frequency', 1, 'Hz'}, {'Phase', 'Phase', 0, 'rad'}}, ...
    '', '', 'Sine current source: i = Amplitude sin(2 pi Frequency t + Phase).');
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
