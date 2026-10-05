#import "nelson_help.typ": *

= nelson.ode.Options <ode_solvers:nelson.ode.Options>

Base class of the solver options classes.

== Syntax

- #raw("options = nelson.ode.Options.makeSolverOptions(solver)");
- #raw("options = nelson.ode.Options.makeSolverOptions(solver, name, value)");
- #raw("tf = isDefault(options)");
- #raw("s = struct(options)");

== Description

#strong[nelson.ode.Options]; is the base class of all #strong[nelson.ode.options.\*]; classes used by the #strong[SolverOptions]; property of the #strong[ode]; object workflow. It is not meant to be instantiated directly; use one of its subclasses or the static factory method #strong[makeSolverOptions];.

 

#table(
  columns: 3,
  [Member], [Kind], [Purpose], 
  [#strong[makeSolverOptions];], [static method], [Creates the options subclass matching a solver name.], 
  [#strong[isDefault];], [method], [Returns true when every public option keeps its default value.], 
  [#strong[struct];], [method], [Converts the options object to an option structure.], 
  [#strong[Refine];], [hidden property], [Output refinement factor, a positive integer scalar (default empty, meaning the solver default).], 
  [#strong[ID];], [hidden property], [Solver identifier stored in the option structure (default #strong['ode45'];).], 
  [#strong[DefaultRefine];], [hidden property], [Refinement factor used when #strong[Refine]; is empty (default 1).], 
)
 #strong[makeSolverOptions(solver, name, value, ...)]; returns an instance of the options subclass matching #strong[solver]; and forwards the name-value pairs to its constructor. Accepted solver names are #strong['ode45'];, #strong['ode23'];, #strong['ode78'];, #strong['ode89'];, #strong['ode113'];, #strong['ode15s'];, #strong['ode23s'];, #strong['ode23t'];, #strong['ode23tb'];, #strong['ode15i'];, #strong['autoswitch'];, #strong['cvodesnonstiff'];, #strong['cvodesstiff'];, and #strong['idas'];. Any other name raises an error. #strong['autoswitch']; and #strong['cvodesnonstiff']; both map to #strong[nelson.ode.options.CVODESNonstiff];.

 #strong[isDefault(options)]; returns true when all the public properties of the options object still hold their default values.

 #strong[struct(options)]; returns an option structure with the same field names as #strong[odeset];, filled from the public properties of the options object, plus the #strong[ID]; field and the resolved #strong[Refine]; value.


== Example

Create solver options with the factory method and inspect them.

``````matlab
options = nelson.ode.Options.makeSolverOptions('ode15s', 'MaxStep', 0.5);
class(options)
isDefault(options)
s = struct(options);
s.ID
s.MaxStep
``````


== See also

#nlink(<ode_solvers:ode>)[ode];, #nlink(<ode_solvers:nelson.ode.options.ODE45>)[nelson.ode.options.ODE45];, #nlink(<ode_solvers:nelson.ode.options.ODE15s>)[nelson.ode.options.ODE15s];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
