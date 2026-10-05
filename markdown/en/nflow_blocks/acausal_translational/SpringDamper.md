# SpringDamper


<p align="center">
<img src="SpringDamper.svg" width="192"/>
</p>
Parallel spring and damper: F = k (s\_a - s\_b) + d (v\_a - v\_b).

## 📝 Syntax

- Block type: SpringDamper

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Parallel spring and damper: F = k (s\_a - s\_b) + d (v\_a - v\_b). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Translational (acausal) | 
| Type | <code>SpringDamper</code> | 
| Label | SpringDamper | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('SpringDamper', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'spring', {{'a', 'a'}, {'b', 'b'}}, {{'k', 'k', 1, 'N/m'}, {'d', 'd', 1, 'N.s/m'}}, '', '', ...
    'Parallel spring and damper: F = k (s_a - s_b) + d (v_a - v_b).');
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
