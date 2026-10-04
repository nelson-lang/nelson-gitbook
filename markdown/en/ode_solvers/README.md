# ODE solvers

The ODE Solvers module provides time integration functions for explicit, stiff, and implicit differential equation workflows in Nelson.

It includes solver entry points, delay and boundary value problem wrappers, option handling, interpolation, solution extension, event detection, and object-oriented problem definitions.

When the optional SUNDIALS backend is built, the object workflow can also select CVODES and IDAS solver values.

The module is designed for numerical experiments, simulations, and teaching examples that need compact solver setup and reproducible result objects.

Tutorial pages cover solver choice, events, tolerances, mass matrices, implicit equations, delay equations, boundary value problems, interpolation, extension, object workflows, and complex states.

| Area                              | Main entries                                                                   |
| --------------------------------- | ------------------------------------------------------------------------------ |
| Initial value problems            | **ode23**, **ode45**, **ode78**, **ode89**, **ode113**, **ode15s**, **ode15i** |
| Delay and boundary value problems | **dde23**, **ddesd**, **ddensd**, **bvp4c**, **bvp5c**                         |
| Utilities                         | **odeset**, **deval**, **odextend**, **ode**, **odeEvent**, **odeSensitivity** |

## Functions

- [ode workflows](1_ode_workflows.md) - ODE examples and object workflow.
- [ode solver selection](2_ode_solver_selection.md) - Choose an ODE solver.
- [ode events tutorial](3_ode_events_tutorial.md) - Locate events during ODE integration.
- [ode tolerances tutorial](4_ode_tolerances_tutorial.md) - Control ODE accuracy and statistics.
- [ode mass implicit tutorial](5_ode_mass_implicit_tutorial.md) - Solve mass matrix and implicit ODE problems.
- [ode interpolation extension tutorial](6_ode_interpolation_extension_tutorial.md) - Interpolate and extend ODE solutions.
- [ode object workflow tutorial](7_ode_object_workflow_tutorial.md) - Define and solve ODE problems with class objects.
- [ode complex workflow tutorial](8_ode_complex_workflow_tutorial.md) - Solve object ODE problems with complex states.
- [bvp4c](bvp4c.md) - Solve boundary value problems with fourth-order collocation.
- [bvp5c](bvp5c.md) - Solve boundary value problems with mesh refinement.
- [bvpget](bvpget.md) - Get a BVP option value.
- [bvpinit](bvpinit.md) - Create an initial BVP solution guess.
- [bvpset](bvpset.md) - Create or update BVP options.
- [bvpxtend](bvpxtend.md) - Extend a BVP solution guess.
- [dde23](dde23.md) - Solve delay equations with constant delays.
- [ddeget](ddeget.md) - Get a DDE option value.
- [ddensd](ddensd.md) - Solve neutral delay equations.
- [ddesd](ddesd.md) - Solve delay equations with state-dependent delayed times.
- [ddeset](ddeset.md) - Create or update DDE options.
- [decic](decic.md) - Compute consistent initial conditions for implicit ODEs.
- [deval](deval.md) - Evaluate an ODE solution.
- [nelson.ode.ODEResults](nelson.ode.ODEResults.md) - Result object returned by solve on an ode object.
- [nelson.ode.Options](nelson.ode.Options.md) - Base class of the solver options classes.
- [nelson.ode.options.CVODESNonstiff](nelson.ode.options.CVODESNonstiff.md) - Options object for the optional CVODES Adams solver.
- [nelson.ode.options.CVODESStiff](nelson.ode.options.CVODESStiff.md) - Options object for the optional CVODES BDF solver.
- [nelson.ode.options.IDAS](nelson.ode.options.IDAS.md) - Options object for the optional IDAS BDF solver.
- [nelson.ode.options.ODE113](nelson.ode.options.ODE113.md) - Options object for the ode113 solver.
- [nelson.ode.options.ODE15i](nelson.ode.options.ODE15i.md) - Options object for the ode15i solver.
- [nelson.ode.options.ODE15s](nelson.ode.options.ODE15s.md) - Options object for the ode15s solver.
- [nelson.ode.options.ODE23](nelson.ode.options.ODE23.md) - Options object for the ode23 solver.
- [nelson.ode.options.ODE23s](nelson.ode.options.ODE23s.md) - Options object for the ode23s solver.
- [nelson.ode.options.ODE23t](nelson.ode.options.ODE23t.md) - Options object for the ode23t solver.
- [nelson.ode.options.ODE23tb](nelson.ode.options.ODE23tb.md) - Options object for the ode23tb solver.
- [nelson.ode.options.ODE45](nelson.ode.options.ODE45.md) - Options object for the ode45 solver.
- [nelson.ode.options.ODE78](nelson.ode.options.ODE78.md) - Options object for the ode78 solver.
- [nelson.ode.options.ODE89](nelson.ode.options.ODE89.md) - Options object for the ode89 solver.
- [ode](ode.md) - Object interface for ODE problems.
- [ode113](ode113.md) - Variable order nonstiff ODE solver entry point.
- [ode15i](ode15i.md) - Implicit ODE solver entry point.
- [ode15s](ode15s.md) - Stiff ODE solver entry point.
- [ode23](ode23.md) - Low order nonstiff ODE solver.
- [ode23s](ode23s.md) - Stiff ODE solver entry point.
- [ode23t](ode23t.md) - Moderately stiff ODE solver entry point.
- [ode23tb](ode23tb.md) - Stiff ODE solver entry point.
- [ode45](ode45.md) - Nonstiff ODE solver.
- [ode78](ode78.md) - High order nonstiff ODE solver.
- [ode89](ode89.md) - High order nonstiff ODE solver.
- [odeDelay](odeDelay.md) - Delay definition object for ODE workflows.
- [odeEvent](odeEvent.md) - Event description for ODE object workflows.
- [odeJacobian](odeJacobian.md) - Jacobian description for ODE solvers.
- [odeMassMatrix](odeMassMatrix.md) - Mass matrix description for ODE solvers.
- [odeSensitivity](odeSensitivity.md) - Sensitivity definition object for ODE workflows.
- [odeexamples](odeexamples.md) - ODE examples entry point.
- [odeget](odeget.md) - Read an ODE option.
- [odephas2](odephas2.md) - Two-dimensional phase-plane ODE output function.
- [odephas3](odephas3.md) - Three-dimensional phase-plane ODE output function.
- [odeplot](odeplot.md) - ODE output function for solution plotting.
- [odeprint](odeprint.md) - Command-window ODE output function.
- [odeset](odeset.md) - Create or update ODE options.
- [odextend](odextend.md) - Extend an ODE solution.
