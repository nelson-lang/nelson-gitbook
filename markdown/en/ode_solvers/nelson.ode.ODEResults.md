# nelson.ode.ODEResults

Result object returned by solve on an ode object.

## 📝 Syntax

- result = solve(problem, tfinal)
- result = solve(problem, t0, tfinal)
- result = nelson.ode.ODEResults(sol)

## 📄 Description

<b>nelson.ode.ODEResults</b> stores the outcome of an integration performed with the <b>ode</b> object workflow. Calling <b>solve</b> on an <b>ode</b> object returns an instance of this class.

| Property             | Content                                                                         |
| -------------------- | ------------------------------------------------------------------------------- |
| **Time**             | Row vector of the time points of the integration.                               |
| **Solution**         | Matrix of solution values, one row per component and one column per time point. |
| **Sensitivity**      | Sensitivity values when sensitivity analysis is requested, empty otherwise.     |
| **EventTime**        | Times at which events were detected, empty when no event function is set.       |
| **EventSolution**    | Solution values at the detected events.                                         |
| **EventIndex**       | Indices of the event functions that triggered.                                  |
| **EventSensitivity** | Sensitivity values at the detected events, empty otherwise.                     |
| **AdjointGradient**  | Gradient computed by adjoint sensitivity analysis, empty otherwise.             |

The class also carries the hidden properties <b>RawSolution</b> (the underlying solution structure, usable with <b>deval</b> and <b>odextend</b>), <b>SolutionValues</b> (the transpose of <b>Solution</b>, one row per time point), and <b>Stats</b> (solver statistics when available).

The constructor <b>nelson.ode.ODEResults(sol)</b> builds a result object from a solution structure with at least the fields <b>x</b> and <b>y</b>, such as the structure returned by the solver functions. The event and sensitivity properties are filled from the optional fields <b>xe</b>, <b>ye</b>, <b>ie</b>, <b>sensitivity</b>, <b>eventSensitivity</b>, and <b>adjointGradient</b>. Called without argument, the constructor returns an object with all properties empty.

## 💡 Example

Solve a problem and inspect the result object.

```matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
result = solve(problem, 0, 2);
class(result)
result.Time(end)
result.Solution(:, end)
```

## 🔗 See also

[ode](../ode_solvers/ode.md), [deval](../ode_solvers/deval.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
