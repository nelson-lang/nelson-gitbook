# bvpinit

Create an initial BVP solution guess.

## 📝 Syntax

- solinit = bvpinit(xinit, yinit)
- solinit = bvpinit(xinit, yinit, parameters)

## 📄 Description

<b>bvpinit</b> creates the initial mesh, state guess, and optional unknown parameters used by BVP solvers.

| Input          | Accepted form                                           | Purpose                               |
| -------------- | ------------------------------------------------------- | ------------------------------------- |
| **xinit**      | Increasing mesh vector.                                 | Defines the first BVP mesh.           |
| **yinit**      | Constant vector, array on the mesh, or function handle. | Defines the initial solution guess.   |
| **parameters** | Optional vector.                                        | Initial guess for unknown parameters. |
| **solinit**    | Structure.                                              | Input for **bvp4c** and **bvp5c**.    |

## 💡 Example

Complete DDE and BVP added features example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 See also

[bvp4c](../ode_solvers/bvp4c.md), [bvp5c](../ode_solvers/bvp5c.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
