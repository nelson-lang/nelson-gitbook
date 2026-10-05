# ode tolerances tutorial

Control ODE accuracy and statistics.

## 📄 Description


Use <b>RelTol</b> for relative accuracy and <b>AbsTol</b> for small solution components. Use <b>InitialStep</b>, <b>MaxStep</b>, and <b>MinStep</b> to bound the adaptive step controller. 

| Option | Effect | Typical use | 
| --- | --- | --- | 
| **RelTol** | Scales the local error test with the solution size. | Primary accuracy control. | 
| **AbsTol** | Sets a floor for small solution components. | Protects variables near zero. | 
| **NormControl** | Uses a vector norm in the adaptive error test. | Coupled systems with shared scale. | 
| **Stats** | Reports solver counters. | Diagnostics and regression tests. | 

 

Set <b>Stats</b> to <b>on</b> to display integration counts, or read the <b>stats</b> field from a solution structure.

## 💡 Examples

Compare two tolerances.

```matlab
loose = odeset('RelTol', 1e-3, 'AbsTol', 1e-6);
tight = odeset('RelTol', 1e-6, 'AbsTol', 1e-9);
solLoose = ode45(@(t,y) y, [0 1], 1, loose);
solTight = ode45(@(t,y) y, [0 1], 1, tight);
[solLoose.stats.nsteps solTight.stats.nsteps] 
```
Display statistics.

```matlab
options = odeset('Stats', 'on', 'MaxStep', 0.1);
[t, y] = ode45(@(t,y) -y, [0 1], 1, options);
```


## 🔗 See also

[odeset](../ode_solvers/odeset.md), [odeget](../ode_solvers/odeget.md), [ode](../ode_solvers/ode.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
