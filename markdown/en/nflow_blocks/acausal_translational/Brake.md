# Brake


<p align="center">
<img src="Brake.svg" width="192"/>
</p>
Signal-actuated friction brake to ground: the input sets the peak braking force.

## 📝 Syntax

- Block type: Brake

## 📥 Input argument

- physical pins - 1 undirected physical pin(s); 1 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Signal-actuated friction brake to ground: the input sets the peak braking force. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Translational (acausal) | 
| Type | <code>Brake</code> | 
| Label | Brake | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Brake', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'brake', {{'flange', 'node'}}, {{'vEps', 'vEps', 0.001, 'm/s'}}, 'f', '', ...
    'Signal-actuated friction brake to ground: the input sets the peak braking force.');
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
