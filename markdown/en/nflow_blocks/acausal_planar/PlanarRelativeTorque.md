# PlanarRelativeTorque


<p align="center">
<img src="PlanarRelativeTorque.svg" width="72"/>
</p>
Actuator torque: +tau on the body at frame a, -tau on the body at frame b (drives a joint).

## 📝 Syntax

- Block type: PlanarRelativeTorque

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Actuator torque: +tau on the body at frame a, -tau on the body at frame b (drives a joint). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Planar (acausal) | 
| Type | <code>PlanarRelativeTorque</code> | 
| Label | PlanarRelativeTorque | 
| Solver | Lowered to <code>planarMechanicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarRelativeTorque', 'Forces', {'a', 'b'}, ...
    {{'tau', 0, 'N.m'}}, '', ...
    'Actuator torque: +tau on the body at frame a, -tau on the body at frame b (drives a joint).');
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
