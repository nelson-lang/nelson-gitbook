# Freewheel


<p align="center">
<img src="Freewheel.svg" width="192"/>
</p>
One-way clutch: couples flange a to b only while a overruns b (freewheels otherwise).

## 📝 Syntax

- Block type: Freewheel

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


One-way clutch: couples flange a to b only while a overruns b (freewheels otherwise). 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Rotational (acausal) | 
| Type | <code>Freewheel</code> | 
| Label | Freewheel | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Freewheel', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'freewheel', {{'a', 'a'}, {'b', 'b'}}, {{'d', 'd', 100, 'N.m.s/rad'}, {'w_eps', 'vEps', 0.001, 'rad/s'}}, '', '', ...
    'One-way clutch: couples flange a to b only while a overruns b (freewheels otherwise).');
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
