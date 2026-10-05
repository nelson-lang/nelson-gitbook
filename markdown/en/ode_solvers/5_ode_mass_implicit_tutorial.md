# ode mass implicit tutorial

Solve mass matrix and implicit ODE problems.

## 📄 Description


Use the <b>Mass</b> option when the system is written as <b>M(t,y)y'=f(t,y)</b>. A constant matrix, scalar, or function handle can define the mass matrix. 

| Problem form | Entry point | Required data | 
| --- | --- | --- | 
| **M(t,y)y' = f(t,y)** | **ode15s**, **ode23t**, **ode23tb** | **Mass** option and initial value. | 
| **F(t,y,yp) = 0** | **ode15i** | Initial value and initial slope. | 
| Object workflow | **ode** with **EquationType** | Residual function, initial value, and optional initial slope. | 

 

Use <b>ode15i</b> for fully implicit residual equations <b>F(t,y,yp)=0</b>. The function form uses the initial value and initial slope that you provide. In the object workflow, <b>ComputeConsistentInitialConditions</b> can adjust the initial slope while keeping the initial value fixed.

## 💡 Examples

Constant mass matrix.

```matlab
options = odeset('Mass', 2, 'Jacobian', 1);
[t, y] = ode15s(@(t,y) y, [0 0.5], 1, options)
```
Implicit residual equation.

```matlab
f = @(t,y,yp) yp + y;
[t, y] = ode15i(f, [0 1], 1, -1)
```


## 🔗 See also

[ode15s](../ode_solvers/ode15s.md), [ode15i](../ode_solvers/ode15i.md), [odeMassMatrix](../ode_solvers/odeMassMatrix.md), [odeJacobian](../ode_solvers/odeJacobian.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
