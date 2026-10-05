# PlanarBody


<p align="center">
<img src="PlanarBody.svg" width="72"/>
</p>
Rigid body: mass m, central inertia I; six states (xc, yc, phi, vx, vy, w). Named frames are body-fixed offsets from the COM.

## 📝 Syntax

- Block type: PlanarBody

## 📥 Input argument

- physical pins - 1 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Rigid body: mass m, central inertia I; six states (xc, yc, phi, vx, vy, w). Named frames are body-fixed offsets from the COM. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Planar (acausal) | 
| Type | <code>PlanarBody</code> | 
| Label | PlanarBody | 
| Solver | Lowered to <code>planarMechanicalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_planar/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/planarCatalog.m</code></summary>

```matlab
  c{end + 1} = pl_entry('PlanarBody', 'Parts', {'com', '<named frames>'}, ...
    {{'m', 1, 'kg'}, {'I', 1, 'kg.m2'}, {'x0', 0, 'm'}, {'y0', 0, 'm'}, ...
     {'phi0', 0, 'rad'}, {'vx0', 0, 'm/s'}, {'vy0', 0, 'm/s'}, {'w0', 0, 'rad/s'}}, '', ...
    'Rigid body: mass m, central inertia I; six states (xc, yc, phi, vx, vy, w). Named frames are body-fixed offsets from the COM.');
```

</details>



## 🔗 See also

[PlanarWorld](../../nflow_blocks/acausal_planar/PlanarWorld.md), [PlanarFixed](../../nflow_blocks/acausal_planar/PlanarFixed.md), [PlanarPointMass](../../nflow_blocks/acausal_planar/PlanarPointMass.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
