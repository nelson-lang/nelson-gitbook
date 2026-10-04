# bvpxtend

Extend a BVP solution guess.

## 📝 Syntax

- solinit = bvpxtend(sol, xnew)
- solinit = bvpxtend(sol, xnew, ynew)

## 📄 Description

<b>bvpxtend</b> builds a new BVP initial guess from an existing solution and a refined mesh.

| Input       | Details                                                           |
| ----------- | ----------------------------------------------------------------- |
| **sol**     | Existing solution or initial guess structure.                     |
| **xnew**    | New mesh points added to or replacing the previous mesh.          |
| **ynew**    | Optional values used at the new mesh points.                      |
| **solinit** | Extended guess structure for another **bvp4c** or **bvp5c** call. |

## 💡 Example

Complete DDE and BVP added features example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```

## 🔗 See also

[bvpinit](../ode_solvers/bvpinit.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
