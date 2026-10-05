# optim.problemdef.OptimizationProblem

Optimization problem object.

## 📝 Syntax

- prob = optimproblem
- prob = optimproblem(Name, Value)
- [sol, fval] = solve(prob, x0)

## 📥 Input argument

- Objective - objective expression to minimize or maximize.
- Constraints - structure of named optimization constraints.
- Name, Value - problem properties such as Objective, Description, and ObjectiveSense.

## 📤 Output argument

- prob - optimization problem object.
- sol - solution structure returned by solve.
- fval - objective value at the solution.

## 📄 Description


optim.problemdef.OptimizationProblem stores an objective, constraints, variables, objective sense, and description. 

Use optimproblem to create the object and solve to compute a solution.

## Used function(s)


    optimproblem
    optimvar
    solve
  

## 💡 Example

Create and solve a small constrained problem.

```matlab
x = optimvar('x', 2, 1, 'LowerBound', 0);
prob = optimproblem('Objective', (x(1) - 1)^2 + (x(2) - 2)^2);
prob.Constraints.limit = x(1) + x(2) <= 4;
[sol, fval] = solve(prob)
```


## 🔗 See also

[optimproblem](../optimization/optimproblem.md), [optimvar](../optimization/optimvar.md), [solve](../optimization/solve.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
