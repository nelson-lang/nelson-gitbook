# RelAngleSensor


<p align="center">
<img src="RelAngleSensor.svg" width="192"/>
</p>
Measures the relative angle phi\_a - phi\_b between two flanges.

## 📝 Syntax

- Block type: RelAngleSensor

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 1 signal output(s) (sensor readings).

## 📄 Description


Measures the relative angle phi\_a - phi\_b between two flanges. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Rotational (acausal) | 
| Type | <code>RelAngleSensor</code> | 
| Label | RelAngleSensor | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('RelAngleSensor', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'relPositionSensor', {{'a', 'a'}, {'b', 'b'}}, {}, '', 'angle', ...
    'Measures the relative angle phi_a - phi_b between two flanges.');
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
