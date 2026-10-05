# ddeset

Create or update DDE options.

## 📝 Syntax

- options = ddeset()
- options = ddeset(name, value)

## 📄 Description


<b>ddeset</b> creates an options structure for delay equation solvers. It accepts common ODE options plus <b>InitialY</b> and <b>Jumps</b>. 

| Option | Purpose | 
| --- | --- | 
| **InitialY** | Initial history value used when no history structure is supplied. | 
| **Jumps** | Known discontinuity times. | 
| Common ODE options | Tolerances, steps, events, and output settings shared with **odeset**. | 



## 💡 Example

Complete DDE and BVP added features example.

```matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
```


## 🔗 See also

[ddeget](../ode_solvers/ddeget.md), [dde23](../ode_solvers/dde23.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
