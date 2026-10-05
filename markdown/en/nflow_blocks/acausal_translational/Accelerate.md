# Accelerate


<p align="center">
<img src="Accelerate.svg" width="192"/>
</p>
Prescribed motion: the flange acceleration follows the input signal.

## 📝 Syntax

- Block type: Accelerate

## 📥 Input argument

- physical pins - 1 undirected physical pin(s); 1 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Prescribed motion: the flange acceleration follows the input signal. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Translational (acausal) | 
| Type | <code>Accelerate</code> | 
| Label | Accelerate | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Accelerate', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'accelerate', {{'flange', 'node'}}, {{'s0', 's0', 0, 'm'}, {'v0', 'v0', 0, 'm/s'}}, 'a', '', ...
    'Prescribed motion: the flange acceleration follows the input signal.');
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
