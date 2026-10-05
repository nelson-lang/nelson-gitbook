# PlanarFixed


<p align="center">
<img src="PlanarFixed.svg" width="72"/>
</p>
Frame rigidly fixed at the world point (x, y).

## 📝 Syntax

- Block type: PlanarFixed

## 📥 Input argument

- physical pins - 1 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Frame rigidly fixed at the world point (x, y). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Planar (acausal) | 
| Type | <code>PlanarFixed</code> | 
| Label | PlanarFixed | 
| Solver | Lowered to <code>planarMechanicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarFixed', 'World', {'frame'}, ...
    {{'x', 0, 'm'}, {'y', 0, 'm'}}, '', ...
    'Frame rigidly fixed at the world point (x, y).');
```

</details>



## 🔗 See also

[PlanarWorld](../../nflow_blocks/acausal_planar/PlanarWorld.md), [PlanarBody](../../nflow_blocks/acausal_planar/PlanarBody.md), [PlanarPointMass](../../nflow_blocks/acausal_planar/PlanarPointMass.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
