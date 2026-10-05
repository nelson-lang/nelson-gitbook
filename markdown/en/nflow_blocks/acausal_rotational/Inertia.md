# Inertia


<p align="center">
<img src="Inertia.svg" width="192"/>
</p>
Rotational inertia: J dw/dt = tau\_net.

## 📝 Syntax

- Block type: Inertia

## 📥 Input argument

- physical pins - 1 undirected physical pin(s); 0 signal input(s).

## 📤 Output argument

- signal ports - 0 signal output(s) (sensor readings).

## 📄 Description


Rotational inertia: J dw/dt = tau\_net. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Rotational (acausal) | 
| Type | <code>Inertia</code> | 
| Label | Inertia | 
| Solver | Lowered to <code>mechanicalTranslationalIsland</code>. Reference solver <code>dae</code> (differential-algebraic); the fixed-step loop and the native explicit solvers (<code>ode1</code>/<code>ode4</code>/<code>ode45</code>) are also supported (a jointed multibody island requires <code>dae</code>). | 

  

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/acausal_rotational/library.json`
 

<details>
<summary>Catalog: <code>modules/nflow_blocks/functions/+NFlow/+internal/acausalCatalog.m</code></summary>

```matlab
  c{end + 1} = entry('Inertia', 'Rotational', 'rotational', 'mechanicalTranslationalIsland', ...
    'mass', {{'flange', 'node'}}, ...
    {{'J', 'm', 1, 'kg.m2'}, {'phi0', 's0', 0, 'rad'}, {'w0', 'v0', 0, 'rad/s'}}, '', '', ...
    'Rotational inertia: J dw/dt = tau_net.');
```

</details>



## 🔗 See also

[EMF](../../nflow_blocks/acausal_rotational/EMF.md), [RotSpring](../../nflow_blocks/acausal_rotational/RotSpring.md), [RotDamper](../../nflow_blocks/acausal_rotational/RotDamper.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
