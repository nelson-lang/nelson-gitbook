#import "nelson_help.typ": *

= ODE solvers

The ODE Solvers module provides time integration functions for explicit, stiff, and implicit differential equation workflows in Nelson.

 It includes solver entry points, delay and boundary value problem wrappers, option handling, interpolation, solution extension, event detection, and object-oriented problem definitions.

 When the optional SUNDIALS backend is built, the object workflow can also select CVODES and IDAS solver values.

 The module is designed for numerical experiments, simulations, and teaching examples that need compact solver setup and reproducible result objects.

 Tutorial pages cover solver choice, events, tolerances, mass matrices, implicit equations, delay equations, boundary value problems, interpolation, extension, object workflows, and complex states.

 
#table(
  columns: 2,
  table.header([Area], [Main entries], ),
  [Initial value problems], [#strong[ode23];, #strong[ode45];, #strong[ode78];, #strong[ode89];, #strong[ode113];, #strong[ode15s];, #strong[ode15i];], 
  [Delay and boundary value problems], [#strong[dde23];, #strong[ddesd];, #strong[ddensd];, #strong[bvp4c];, #strong[bvp5c];], 
  [Utilities], [#strong[odeset];, #strong[deval];, #strong[odextend];, #strong[ode];, #strong[odeEvent];, #strong[odeSensitivity];], 
)
== Functions

- #nlink(<ode_solvers:1_ode_workflows>)[ode workflows]: ODE examples and object workflow.
- #nlink(<ode_solvers:2_ode_solver_selection>)[ode solver selection]: Choose an ODE solver.
- #nlink(<ode_solvers:3_ode_events_tutorial>)[ode events tutorial]: Locate events during ODE integration.
- #nlink(<ode_solvers:4_ode_tolerances_tutorial>)[ode tolerances tutorial]: Control ODE accuracy and statistics.
- #nlink(<ode_solvers:5_ode_mass_implicit_tutorial>)[ode mass implicit tutorial]: Solve mass matrix and implicit ODE problems.
- #nlink(<ode_solvers:6_ode_interpolation_extension_tutorial>)[ode interpolation extension tutorial]: Interpolate and extend ODE solutions.
- #nlink(<ode_solvers:7_ode_object_workflow_tutorial>)[ode object workflow tutorial]: Define and solve ODE problems with class objects.
- #nlink(<ode_solvers:8_ode_complex_workflow_tutorial>)[ode complex workflow tutorial]: Solve object ODE problems with complex states.
- #nlink(<ode_solvers:bvp4c>)[bvp4c]: Solve boundary value problems with fourth-order collocation.
- #nlink(<ode_solvers:bvp5c>)[bvp5c]: Solve boundary value problems with mesh refinement.
- #nlink(<ode_solvers:bvpget>)[bvpget]: Get a BVP option value.
- #nlink(<ode_solvers:bvpinit>)[bvpinit]: Create an initial BVP solution guess.
- #nlink(<ode_solvers:bvpset>)[bvpset]: Create or update BVP options.
- #nlink(<ode_solvers:bvpxtend>)[bvpxtend]: Extend a BVP solution guess.
- #nlink(<ode_solvers:dde23>)[dde23]: Solve delay equations with constant delays.
- #nlink(<ode_solvers:ddeget>)[ddeget]: Get a DDE option value.
- #nlink(<ode_solvers:ddensd>)[ddensd]: Solve neutral delay equations.
- #nlink(<ode_solvers:ddesd>)[ddesd]: Solve delay equations with state-dependent delayed times.
- #nlink(<ode_solvers:ddeset>)[ddeset]: Create or update DDE options.
- #nlink(<ode_solvers:decic>)[decic]: Compute consistent initial conditions for implicit ODEs.
- #nlink(<ode_solvers:deval>)[deval]: Evaluate an ODE solution.
- #nlink(<ode_solvers:nelson.ode.ODEResults>)[nelson.ode.ODEResults]: Result object returned by solve on an ode object.
- #nlink(<ode_solvers:nelson.ode.Options>)[nelson.ode.Options]: Base class of the solver options classes.
- #nlink(<ode_solvers:nelson.ode.options.CVODESNonstiff>)[nelson.ode.options.CVODESNonstiff]: Options object for the optional CVODES Adams solver.
- #nlink(<ode_solvers:nelson.ode.options.CVODESStiff>)[nelson.ode.options.CVODESStiff]: Options object for the optional CVODES BDF solver.
- #nlink(<ode_solvers:nelson.ode.options.IDAS>)[nelson.ode.options.IDAS]: Options object for the optional IDAS BDF solver.
- #nlink(<ode_solvers:nelson.ode.options.ODE113>)[nelson.ode.options.ODE113]: Options object for the ode113 solver.
- #nlink(<ode_solvers:nelson.ode.options.ODE15i>)[nelson.ode.options.ODE15i]: Options object for the ode15i solver.
- #nlink(<ode_solvers:nelson.ode.options.ODE15s>)[nelson.ode.options.ODE15s]: Options object for the ode15s solver.
- #nlink(<ode_solvers:nelson.ode.options.ODE23>)[nelson.ode.options.ODE23]: Options object for the ode23 solver.
- #nlink(<ode_solvers:nelson.ode.options.ODE23s>)[nelson.ode.options.ODE23s]: Options object for the ode23s solver.
- #nlink(<ode_solvers:nelson.ode.options.ODE23t>)[nelson.ode.options.ODE23t]: Options object for the ode23t solver.
- #nlink(<ode_solvers:nelson.ode.options.ODE23tb>)[nelson.ode.options.ODE23tb]: Options object for the ode23tb solver.
- #nlink(<ode_solvers:nelson.ode.options.ODE45>)[nelson.ode.options.ODE45]: Options object for the ode45 solver.
- #nlink(<ode_solvers:nelson.ode.options.ODE78>)[nelson.ode.options.ODE78]: Options object for the ode78 solver.
- #nlink(<ode_solvers:nelson.ode.options.ODE89>)[nelson.ode.options.ODE89]: Options object for the ode89 solver.
- #nlink(<ode_solvers:ode>)[ode]: Object interface for ODE problems.
- #nlink(<ode_solvers:ode113>)[ode113]: Variable order nonstiff ODE solver entry point.
- #nlink(<ode_solvers:ode15i>)[ode15i]: Implicit ODE solver entry point.
- #nlink(<ode_solvers:ode15s>)[ode15s]: Stiff ODE solver entry point.
- #nlink(<ode_solvers:ode23>)[ode23]: Low order nonstiff ODE solver.
- #nlink(<ode_solvers:ode23s>)[ode23s]: Stiff ODE solver entry point.
- #nlink(<ode_solvers:ode23t>)[ode23t]: Moderately stiff ODE solver entry point.
- #nlink(<ode_solvers:ode23tb>)[ode23tb]: Stiff ODE solver entry point.
- #nlink(<ode_solvers:ode45>)[ode45]: Nonstiff ODE solver.
- #nlink(<ode_solvers:ode78>)[ode78]: High order nonstiff ODE solver.
- #nlink(<ode_solvers:ode89>)[ode89]: High order nonstiff ODE solver.
- #nlink(<ode_solvers:odeDelay>)[odeDelay]: Delay definition object for ODE workflows.
- #nlink(<ode_solvers:odeEvent>)[odeEvent]: Event description for ODE object workflows.
- #nlink(<ode_solvers:odeJacobian>)[odeJacobian]: Jacobian description for ODE solvers.
- #nlink(<ode_solvers:odeMassMatrix>)[odeMassMatrix]: Mass matrix description for ODE solvers.
- #nlink(<ode_solvers:odeSensitivity>)[odeSensitivity]: Sensitivity definition object for ODE workflows.
- #nlink(<ode_solvers:odeexamples>)[odeexamples]: ODE examples entry point.
- #nlink(<ode_solvers:odeget>)[odeget]: Read an ODE option.
- #nlink(<ode_solvers:odephas2>)[odephas2]: Two-dimensional phase-plane ODE output function.
- #nlink(<ode_solvers:odephas3>)[odephas3]: Three-dimensional phase-plane ODE output function.
- #nlink(<ode_solvers:odeplot>)[odeplot]: ODE output function for solution plotting.
- #nlink(<ode_solvers:odeprint>)[odeprint]: Command-window ODE output function.
- #nlink(<ode_solvers:odeset>)[odeset]: Create or update ODE options.
- #nlink(<ode_solvers:odextend>)[odextend]: Extend an ODE solution.


#nested[
#pagebreak(weak: true)
#include "1_ode_workflows.typ"
#pagebreak(weak: true)
#include "2_ode_solver_selection.typ"
#pagebreak(weak: true)
#include "3_ode_events_tutorial.typ"
#pagebreak(weak: true)
#include "4_ode_tolerances_tutorial.typ"
#pagebreak(weak: true)
#include "5_ode_mass_implicit_tutorial.typ"
#pagebreak(weak: true)
#include "6_ode_interpolation_extension_tutorial.typ"
#pagebreak(weak: true)
#include "7_ode_object_workflow_tutorial.typ"
#pagebreak(weak: true)
#include "8_ode_complex_workflow_tutorial.typ"
#pagebreak(weak: true)
#include "bvp4c.typ"
#pagebreak(weak: true)
#include "bvp5c.typ"
#pagebreak(weak: true)
#include "bvpget.typ"
#pagebreak(weak: true)
#include "bvpinit.typ"
#pagebreak(weak: true)
#include "bvpset.typ"
#pagebreak(weak: true)
#include "bvpxtend.typ"
#pagebreak(weak: true)
#include "dde23.typ"
#pagebreak(weak: true)
#include "ddeget.typ"
#pagebreak(weak: true)
#include "ddensd.typ"
#pagebreak(weak: true)
#include "ddesd.typ"
#pagebreak(weak: true)
#include "ddeset.typ"
#pagebreak(weak: true)
#include "decic.typ"
#pagebreak(weak: true)
#include "deval.typ"
#pagebreak(weak: true)
#include "nelson.ode.ODEResults.typ"
#pagebreak(weak: true)
#include "nelson.ode.Options.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.CVODESNonstiff.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.CVODESStiff.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.IDAS.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE113.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE15i.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE15s.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE23.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE23s.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE23t.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE23tb.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE45.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE78.typ"
#pagebreak(weak: true)
#include "nelson.ode.options.ODE89.typ"
#pagebreak(weak: true)
#include "ode.typ"
#pagebreak(weak: true)
#include "ode113.typ"
#pagebreak(weak: true)
#include "ode15i.typ"
#pagebreak(weak: true)
#include "ode15s.typ"
#pagebreak(weak: true)
#include "ode23.typ"
#pagebreak(weak: true)
#include "ode23s.typ"
#pagebreak(weak: true)
#include "ode23t.typ"
#pagebreak(weak: true)
#include "ode23tb.typ"
#pagebreak(weak: true)
#include "ode45.typ"
#pagebreak(weak: true)
#include "ode78.typ"
#pagebreak(weak: true)
#include "ode89.typ"
#pagebreak(weak: true)
#include "odeDelay.typ"
#pagebreak(weak: true)
#include "odeEvent.typ"
#pagebreak(weak: true)
#include "odeJacobian.typ"
#pagebreak(weak: true)
#include "odeMassMatrix.typ"
#pagebreak(weak: true)
#include "odeSensitivity.typ"
#pagebreak(weak: true)
#include "odeexamples.typ"
#pagebreak(weak: true)
#include "odeget.typ"
#pagebreak(weak: true)
#include "odephas2.typ"
#pagebreak(weak: true)
#include "odephas3.typ"
#pagebreak(weak: true)
#include "odeplot.typ"
#pagebreak(weak: true)
#include "odeprint.typ"
#pagebreak(weak: true)
#include "odeset.typ"
#pagebreak(weak: true)
#include "odextend.typ"
]
