# Friction


<p align="center">
<img src="Friction.svg" width="192"/>
</p>
Regularised Coulomb friction (event-free): F = -Fc tanh(v / vEps).

## 📝 Syntax

- Block type: Friction

## 📥 Input argument

- physical pins - 1 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Regularised Coulomb friction (event-free): F = -Fc tanh(v / vEps). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Translational (acausal) | 
| Type | <code>Friction</code> | 
| Label | Friction | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Friction', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'friction', {{'flange', 'node'}}, {{'Fc', 'Fc', 1, 'N'}, {'vEps', 'vEps', 0.001, 'm/s'}}, '', '', ...
    'Regularised Coulomb friction (event-free): F = -Fc tanh(v / vEps).');
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
