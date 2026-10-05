# PlanarSpring


<p align="center">
<img src="PlanarSpring.svg" width="72"/>
</p>
Linear 2D spring between the points at frames a and b: F = -c dr.

## 📝 Syntax

- Block type: PlanarSpring

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Linear 2D spring between the points at frames a and b: F = -c dr. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Planar (acausal) | 
| Type | <code>PlanarSpring</code> | 
| Label | PlanarSpring | 
| Solver | Lowered to <code>planarMechanicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarSpring', 'Forces', {'a', 'b'}, ...
    {{'c', 100, 'N/m'}}, '', ...
    'Linear 2D spring between the points at frames a and b: F = -c dr.');
```

</details>



## 🔗 See also

[PlanarWorld](../../nflow_blocks/acausal_planar/PlanarWorld.md), [PlanarFixed](../../nflow_blocks/acausal_planar/PlanarFixed.md), [PlanarBody](../../nflow_blocks/acausal_planar/PlanarBody.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
