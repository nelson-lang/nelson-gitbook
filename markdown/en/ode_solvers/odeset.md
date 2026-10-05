# odeset

Create or update ODE options.

## 📝 Syntax

- options = odeset()
- options = odeset(name, value)
- options = odeset(oldOptions, name, value)

## 📄 Description


<b>odeset</b> creates an options structure for ODE solvers. 

| Group | Options | Purpose | 
| --- | --- | --- | 
| Tolerances | **RelTol**, **AbsTol**, **NormControl** | Control the adaptive error test. | 
| Steps and output | **InitialStep**, **MaxStep**, **MinStep**, **Refine**, **OutputFcn**, **OutputSel**, **Stats** | Control public output points, output callbacks, and statistics. | 
| Events and constraints | **Events**, **NonNegative** | Locate zeros and constrain selected components. | 
| Stiff systems | **Mass**, **Jacobian**, **JPattern**, **JConstant**, **BDF**, **MaxOrder**, **MassSingular**, **MStateDependence**, **MvPattern** | Provide structural information to stiff or implicit solvers. | 

 

Common options include <b>RelTol</b>, <b>AbsTol</b>, <b>InitialStep</b>, <b>MaxStep</b>, <b>MinStep</b>, <b>Refine</b>, <b>Stats</b>, <b>Events</b>, <b>OutputFcn</b>, <b>OutputSel</b>, <b>NonNegative</b>, <b>Mass</b>, <b>Jacobian</b>, <b>JPattern</b>, <b>JConstant</b>, <b>BDF</b>, <b>MaxOrder</b>, <b>MassSingular</b>, <b>MStateDependence</b>, and <b>MvPattern</b>. Explicit step-size options must be positive. 

When the time span has only two values, <b>Refine</b> inserts additional output points inside each accepted step. With longer time spans, requested time points define the public output points. <b>OutputFcn</b> is called at these refined or requested output points; returning scalar <b>true</b> stops integration at the current output point. <b>Stats</b> set to <b>on</b> prints step and evaluation counters. <b>NormControl</b> set to <b>on</b> uses a vector norm in the adaptive error test. <b>Vectorized</b> set to <b>on</b> allows vectorized right-hand side calls during finite-difference Jacobian construction. <b>JPattern</b> supplies the nonzero pattern used by stiff entries and the implicit entry when a finite-difference Jacobian is needed. <b>JConstant</b> set to <b>on</b> reuses the Jacobian inside each linearly implicit step.

## 💡 Examples

Refined output points.

```matlab
options = odeset('Refine', 4, 'MaxStep', 0.5);
[t, y] = ode45(@(t,y) y, [0 1], 1, options)
```
Stats and a Jacobian for a stiff entry point.

```matlab
f = @(t,y) -1000 * (y - cos(t)) - sin(t);
options = odeset('Jacobian', -1000, 'Stats', 'on');
[t, y] = ode15s(f, [0 0.5], 1, options)
```
Vector norm control.

```matlab
options = odeset('NormControl', 'on');
[t, y] = ode45(@(t,y) [y(1); -2*y(2)], [0 1], [1; 1], options)
```
Finite-difference Jacobian pattern.

```matlab
pattern = [1 0; 0 1];
options = odeset('JPattern', pattern, 'Vectorized', 'on');
[t, y] = ode15s(@(t,y) [-10*y(1,:); -20*y(2,:)], [0 0.2], [1; 2], options)
```
Constant Jacobian hint.

```matlab
options = odeset('Jacobian', -25, 'JConstant', 'on');
[t, y] = ode15s(@(t,y) -25*y, [0 0.2], 1, options)
```
Output function at requested points.

```matlab
out = @(t,y,flag) false;
options = odeset('OutputFcn', out);
[t, y] = ode45(@(t,y) y, [0 0.25 0.5], 1, options)
```


## 🔗 See also

[odeget](../ode_solvers/odeget.md), [ode45](../ode_solvers/ode45.md), [ode15s](../ode_solvers/ode15s.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
