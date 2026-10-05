#import "nelson_help.typ": *

= odeMassMatrix <ode_solvers:odeMassMatrix>

Mass matrix description for ODE solvers.

== Syntax

- #raw("M = odeMassMatrix(value)");
- #raw("M = odeMassMatrix(value, name, value)");
- #raw("M = odeMassMatrix(name, value)");

== Description

#strong[odeMassMatrix]; stores a mass matrix or mass matrix callback for the object ODE workflow.

 

#table(
  columns: 3,
  [Object], [Purpose], [Used by], 
  [#strong[odeMassMatrix];], [Stores a reusable definition for the #strong[ode]; object workflow.], [The matching #strong[ode]; property and #strong[solve];.], 
  [Validation], [Checks supported names and shapes at construction time.], [Tests and errors stay explicit before integration.], 
)
 Public properties are #strong[MassMatrix];, #strong[Singular];, #strong[StateDependence];, and #strong[SparsityPattern];. The compatible aliases #strong[MassSingular];, #strong[MStateDependence];, and #strong[MvPattern]; are also accepted by the constructor.

 #strong[Singular]; accepts #strong[yes];, #strong[no];, or #strong[maybe];. #strong[StateDependence]; accepts #strong[none];, #strong[weak];, or #strong[strong];. #strong[SparsityPattern]; accepts a numeric or logical square matrix and is passed to the solver options.

 Without a mass matrix, defaults are #strong[Singular\='maybe']; and #strong[StateDependence\='weak'];. For a numeric mass matrix, Nelson infers #strong[Singular]; and uses #strong[StateDependence\='none']; unless values are supplied explicitly.


== Examples

``````matlab
M = odeMassMatrix(2)
``````

Mass matrix in the object workflow.

``````matlab
M = odeMassMatrix('MassMatrix', 2, 'Singular', 'no');
problem = ode('ODEFcn', @(t,y) -y, 'InitialValue', 1, 'MassMatrix', M);
result = solve(problem, 0, 1)
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:odeset>)[odeset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
