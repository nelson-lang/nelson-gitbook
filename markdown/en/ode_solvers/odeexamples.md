# odeexamples

ODE examples entry point.

## 📝 Syntax

- odeexamples()

## 📄 Description

<b>odeexamples</b> opens the ODE workflow help page, which contains runnable examples and tutorials.

| Example                | Focus                                                  | Output                              |
| ---------------------- | ------------------------------------------------------ | ----------------------------------- |
| Basic ODE              | Initial value solve and dense output.                  | Solution curves and sampled values. |
| Events and mass matrix | Event localization, mass matrices, and solver options. | Event points and diagnostic plots.  |
| DDE/BVP added features | Delay equations and boundary value problems.           | Plots and solution structures.      |

The <b>ode_solvers/examples</b> directory also contains complete scripts for events and interpolation, fully implicit equations, delay sensitivities, DDE/BVP workflows, and optional SUNDIALS sparse preconditioning.

## 💡 Examples

Open the examples entry point.

```matlab
odeexamples()
```

Run the event and interpolation example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/ode_object_event_interpolation_example.m'])
```

Run the DDE and BVP example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

Run the optional SUNDIALS sparse preconditioner example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/ode_sundials_sparse_preconditioner_example.m'])
```

## 🔗 See also

[ode workflows](../ode_solvers/1_ode_workflows.md), [ode](../ode_solvers/ode.md), [dde23](../ode_solvers/dde23.md), [bvp4c](../ode_solvers/bvp4c.md), [nelson.ode.options.CVODESStiff](../ode_solvers/nelson.ode.options.CVODESStiff.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
