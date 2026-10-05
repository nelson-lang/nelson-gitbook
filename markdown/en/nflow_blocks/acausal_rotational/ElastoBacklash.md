# ElastoBacklash


<p align="center">
<img src="ElastoBacklash.svg" width="192"/>
</p>
Rotational backlash: elastic torque with a dead zone of total play b.

## 📝 Syntax

- Block type: ElastoBacklash

## 📥 Input argument

- physical pins - 2 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Rotational backlash: elastic torque with a dead zone of total play b. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Rotational (acausal) | 
| Type | <code>ElastoBacklash</code> | 
| Label | ElastoBacklash | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('ElastoBacklash', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'backlash', {{'a', 'a'}, {'b', 'b'}}, {{'c', 'c', 1, 'N.m/rad'}, {'b', 'play', 0, 'rad'}}, '', '', ...
    'Rotational backlash: elastic torque with a dead zone of total play b.');
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
