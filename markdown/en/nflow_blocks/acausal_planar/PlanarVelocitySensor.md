# PlanarVelocitySensor


<p align="center">
<img src="PlanarVelocitySensor.svg" width="72"/>
</p>
Absolute velocity of the frame-a point along the chosen axis (x, y) or the angular velocity (omega).

## 📝 Syntax

- Block type: PlanarVelocitySensor

## 📥 Input argument

- physical pins - 1 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 1 signal output(s) (sensor readings).

## 📄 Description


Absolute velocity of the frame-a point along the chosen axis (x, y) or the angular velocity (omega). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Planar (acausal) | 
| Type | <code>PlanarVelocitySensor</code> | 
| Label | PlanarVelocitySensor | 
| Solver | Lowered to <code>planarMechanicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarVelocitySensor', 'Sensors', {'a'}, ...
    {{'axis', 'x', 'x|y|omega'}}, 'output', ...
    'Absolute velocity of the frame-a point along the chosen axis (x, y) or the angular velocity (omega).');
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
