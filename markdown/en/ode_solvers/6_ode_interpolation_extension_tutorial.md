# ode interpolation extension tutorial

Interpolate and extend ODE solutions.

## 📄 Description


Call a solver with one output to get a solution structure. The structure stores accepted internal steps; array outputs such as <b>[t, y]</b> use requested or refined output points. Use <b>deval</b> to evaluate the solution structure at additional times. 

| Task | Call | Notes | 
| --- | --- | --- | 
| Interpolate | **deval(sol, tq)** | Evaluation points must stay inside the solution interval. | 
| Get derivatives | **[y, yp] = deval(sol, tq)** | Derivative output follows the same column layout as **y**. | 
| Continue | **odextend(sol, odefun, tfinal)** | Builds a new solution structure on the extended interval. | 

 

Use <b>odextend</b> to continue an integration from the final state while preserving solution metadata and events.

## 💡 Examples

Evaluate a solution at requested points.

```matlab
sol = ode45(@(t,y) -y, [0 1], 1);
values = deval(sol, [0 0.25 0.5 1])
```
Extend a solution.

```matlab
sol = ode45(@(t,y) -y, [0 0.5], 1);
extended = odextend(sol, @(t,y) -y, 1);
value = deval(extended, 1)
```


## 🔗 See also

[deval](../ode_solvers/deval.md), [odextend](../ode_solvers/odextend.md), [ode45](../ode_solvers/ode45.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
