# Clutch


<p align="center">
<img src="Clutch.svg" width="192"/>
</p>
Rotational clutch (event-free stick-slip): tau = tau\_max tanh((w\_a - w\_b) / w\_eps) reduces the slip toward a common speed.

## 📝 Syntax

- Block type: Clutch

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Rotational clutch (event-free stick-slip): tau = tau\_max tanh((w\_a - w\_b) / w\_eps) reduces the slip toward a common speed. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Rotational (acausal) | 
| Type | <code>Clutch</code> | 
| Label | Clutch | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Clutch', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'clutch', {{'a', 'a'}, {'b', 'b'}}, {{'tau_max', 'Fc', 1, 'N.m'}, {'w_eps', 'vEps', 0.001, 'rad/s'}}, '', '', ...
    'Rotational clutch (event-free stick-slip): tau = tau_max tanh((w_a - w_b) / w_eps) reduces the slip toward a common speed.');
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
