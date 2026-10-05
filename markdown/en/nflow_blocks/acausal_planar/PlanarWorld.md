# PlanarWorld


<p align="center">
<img src="PlanarWorld.svg" width="72"/>
</p>
Inertial world with uniform gravity (down = -y); provides a fixed frame at the origin.

## 📝 Syntax

- Block type: PlanarWorld

## 📥 Input argument

- physical pins - 1 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Inertial world with uniform gravity (down = -y); provides a fixed frame at the origin. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Planar (acausal) | 
| Type | <code>PlanarWorld</code> | 
| Label | PlanarWorld | 
| Solver | Lowered to <code>planarMechanicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarWorld', 'World', {'frame'}, ...
    {{'gravity', 9.81, 'm/s2'}}, '', ...
    'Inertial world with uniform gravity (down = -y); provides a fixed frame at the origin.');
```

</details>



## 🔗 See also

[PlanarFixed](../../nflow_blocks/acausal_planar/PlanarFixed.md), [PlanarBody](../../nflow_blocks/acausal_planar/PlanarBody.md), [PlanarPointMass](../../nflow_blocks/acausal_planar/PlanarPointMass.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
