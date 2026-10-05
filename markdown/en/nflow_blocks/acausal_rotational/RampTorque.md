# RampTorque


<p align="center">
<img src="RampTorque.svg" width="192"/>
</p>
Ramp torque on a flange: tau = Slope (t - StartTime) for t >= StartTime, else 0.

## 📝 Syntax

- Block type: RampTorque

## 📥 Input argument

- physical pins - 1 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Ramp torque on a flange: tau = Slope (t - StartTime) for t >= StartTime, else 0. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Rotational (acausal) | 
| Type | <code>RampTorque</code> | 
| Label | RampTorque | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('RampTorque', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'force', {{'flange', 'node'}}, ...
    {{'Slope', 'slope', 1, 'N.m/s'}, {'StartTime', 'start', 0, 's'}}, ...
    '', '', 'Ramp torque on a flange: tau = Slope (t - StartTime) for t >= StartTime, else 0.');
```

</details>



## 🔗 See also

[EMF](../../nflow_blocks/acausal_rotational/EMF.md), [Inertia](../../nflow_blocks/acausal_rotational/Inertia.md), [RotSpring](../../nflow_blocks/acausal_rotational/RotSpring.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
