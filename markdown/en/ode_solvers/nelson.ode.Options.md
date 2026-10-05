# nelson.ode.Options

Base class of the solver options classes.

## 📝 Syntax

- options = nelson.ode.Options.makeSolverOptions(solver)
- options = nelson.ode.Options.makeSolverOptions(solver, name, value)
- tf = isDefault(options)
- s = struct(options)

## 📄 Description


<b>nelson.ode.Options</b> is the base class of all <b>nelson.ode.options.\*</b> classes used by the <b>SolverOptions</b> property of the <b>ode</b> object workflow. It is not meant to be instantiated directly; use one of its subclasses or the static factory method <b>makeSolverOptions</b>. 

| Member | Kind | Purpose | 
| --- | --- | --- | 
| **makeSolverOptions** | static method | Creates the options subclass matching a solver name. | 
| **isDefault** | method | Returns true when every public option keeps its default value. | 
| **struct** | method | Converts the options object to an option structure. | 
| **Refine** | hidden property | Output refinement factor, a positive integer scalar (default empty, meaning the solver default). | 
| **ID** | hidden property | Solver identifier stored in the option structure (default **'ode45'**). | 
| **DefaultRefine** | hidden property | Refinement factor used when **Refine** is empty (default 1). | 

 

<b>makeSolverOptions(solver, name, value, ...)</b> returns an instance of the options subclass matching <b>solver</b> and forwards the name-value pairs to its constructor. Accepted solver names are <b>'ode45'</b>, <b>'ode23'</b>, <b>'ode78'</b>, <b>'ode89'</b>, <b>'ode113'</b>, <b>'ode15s'</b>, <b>'ode23s'</b>, <b>'ode23t'</b>, <b>'ode23tb'</b>, <b>'ode15i'</b>, <b>'autoswitch'</b>, <b>'cvodesnonstiff'</b>, <b>'cvodesstiff'</b>, and <b>'idas'</b>. Any other name raises an error. <b>'autoswitch'</b> and <b>'cvodesnonstiff'</b> both map to <b>nelson.ode.options.CVODESNonstiff</b>. 

<b>isDefault(options)</b> returns true when all the public properties of the options object still hold their default values. 

<b>struct(options)</b> returns an option structure with the same field names as <b>odeset</b>, filled from the public properties of the options object, plus the <b>ID</b> field and the resolved <b>Refine</b> value.

## 💡 Example

Create solver options with the factory method and inspect them.

```matlab
options = nelson.ode.Options.makeSolverOptions('ode15s', 'MaxStep', 0.5);
class(options)
isDefault(options)
s = struct(options);
s.ID
s.MaxStep
```


## 🔗 See also

[ode](../ode_solvers/ode.md), [nelson.ode.options.ODE45](../ode_solvers/nelson.ode.options.ODE45.md), [nelson.ode.options.ODE15s](../ode_solvers/nelson.ode.options.ODE15s.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
