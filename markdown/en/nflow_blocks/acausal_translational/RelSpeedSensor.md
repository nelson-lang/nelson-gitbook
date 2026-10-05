# RelSpeedSensor


<p align="center">
<img src="RelSpeedSensor.svg" width="192"/>
</p>
Measures the relative velocity v\_a - v\_b between two flanges.

## 📝 Syntax

- Block type: RelSpeedSensor

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 1 signal output(s) (sensor readings).

## 📄 Description


Measures the relative velocity v\_a - v\_b between two flanges. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Translational (acausal) | 
| Type | <code>RelSpeedSensor</code> | 
| Label | RelSpeedSensor | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('RelSpeedSensor', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'relSpeedSensor', {{'a', 'a'}, {'b', 'b'}}, {}, '', 'speed', ...
    'Measures the relative velocity v_a - v_b between two flanges.');
```

</details>



## 🔗 See also

[TranslationalEMF](../../nflow_blocks/acausal_translational/TranslationalEMF.md), [Mass](../../nflow_blocks/acausal_translational/Mass.md), [SlidingMass](../../nflow_blocks/acausal_translational/SlidingMass.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
