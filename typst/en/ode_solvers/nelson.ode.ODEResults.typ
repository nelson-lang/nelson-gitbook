#import "nelson_help.typ": *

= nelson.ode.ODEResults <ode_solvers:nelson.ode.ODEResults>

Result object returned by solve on an ode object.

== Syntax

- #raw("result = solve(problem, tfinal)");
- #raw("result = solve(problem, t0, tfinal)");
- #raw("result = nelson.ode.ODEResults(sol)");

== Description

#strong[nelson.ode.ODEResults]; stores the outcome of an integration performed with the #strong[ode]; object workflow. Calling #strong[solve]; on an #strong[ode]; object returns an instance of this class.

 

#table(
  columns: 2,
  [Property], [Content], 
  [#strong[Time];], [Row vector of the time points of the integration.], 
  [#strong[Solution];], [Matrix of solution values, one row per component and one column per time point.], 
  [#strong[Sensitivity];], [Sensitivity values when sensitivity analysis is requested, empty otherwise.], 
  [#strong[EventTime];], [Times at which events were detected, empty when no event function is set.], 
  [#strong[EventSolution];], [Solution values at the detected events.], 
  [#strong[EventIndex];], [Indices of the event functions that triggered.], 
  [#strong[EventSensitivity];], [Sensitivity values at the detected events, empty otherwise.], 
  [#strong[AdjointGradient];], [Gradient computed by adjoint sensitivity analysis, empty otherwise.], 
)
 The class also carries the hidden properties #strong[RawSolution]; (the underlying solution structure, usable with #strong[deval]; and #strong[odextend];), #strong[SolutionValues]; (the transpose of #strong[Solution];, one row per time point), and #strong[Stats]; (solver statistics when available).

 The constructor #strong[nelson.ode.ODEResults(sol)]; builds a result object from a solution structure with at least the fields #strong[x]; and #strong[y];, such as the structure returned by the solver functions. The event and sensitivity properties are filled from the optional fields #strong[xe];, #strong[ye];, #strong[ie];, #strong[sensitivity];, #strong[eventSensitivity];, and #strong[adjointGradient];. Called without argument, the constructor returns an object with all properties empty.


== Example

Solve a problem and inspect the result object.

``````matlab
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1);
result = solve(problem, 0, 2);
class(result)
result.Time(end)
result.Solution(:, end)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:deval>)[deval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
