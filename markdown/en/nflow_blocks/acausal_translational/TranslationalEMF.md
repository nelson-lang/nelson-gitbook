# TranslationalEMF


<p align="center">
<img src="TranslationalEMF.svg" width="192"/>
</p>
Linear electro-mechanical converter: back-emf v = k v\_flange, force F = k i.

## 📝 Syntax

- Block type: TranslationalEMF

## 📥 Input argument

- physical pins - 3 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Linear electro-mechanical converter: back-emf v = k v\_flange, force F = k i. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Translational (acausal) | 
| Type | <code>TranslationalEMF</code> | 
| Label | TranslationalEMF | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_translational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('TranslationalEMF', 'Translational', 'translational', 'mechanicalTranslationalIsland', ...
    'force', {{'p', 'a'}, {'n', 'b'}, {'flange', 'node'}}, {{'k', 'k', 1, 'N/A'}}, '', '', ...
    'Linear electro-mechanical converter: back-emf v = k v_flange, force F = k i.');
```

</details>



## 🔗 See also

[Mass](../../nflow_blocks/acausal_translational/Mass.md), [SlidingMass](../../nflow_blocks/acausal_translational/SlidingMass.md), [MassWithWeight](../../nflow_blocks/acausal_translational/MassWithWeight.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
