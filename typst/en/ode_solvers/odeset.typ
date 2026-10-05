#import "nelson_help.typ": *

= odeset <ode_solvers:odeset>

Create or update ODE options.

== Syntax

- #raw("options = odeset()");
- #raw("options = odeset(name, value)");
- #raw("options = odeset(oldOptions, name, value)");

== Description

#strong[odeset]; creates an options structure for ODE solvers.

 

#table(
  columns: 3,
  [Group], [Options], [Purpose], 
  [Tolerances], [#strong[RelTol];, #strong[AbsTol];, #strong[NormControl];], [Control the adaptive error test.], 
  [Steps and output], [#strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[Refine];, #strong[OutputFcn];, #strong[OutputSel];, #strong[Stats];], [Control public output points, output callbacks, and statistics.], 
  [Events and constraints], [#strong[Events];, #strong[NonNegative];], [Locate zeros and constrain selected components.], 
  [Stiff systems], [#strong[Mass];, #strong[Jacobian];, #strong[JPattern];, #strong[JConstant];, #strong[BDF];, #strong[MaxOrder];, #strong[MassSingular];, #strong[MStateDependence];, #strong[MvPattern];], [Provide structural information to stiff or implicit solvers.], 
)
 Common options include #strong[RelTol];, #strong[AbsTol];, #strong[InitialStep];, #strong[MaxStep];, #strong[MinStep];, #strong[Refine];, #strong[Stats];, #strong[Events];, #strong[OutputFcn];, #strong[OutputSel];, #strong[NonNegative];, #strong[Mass];, #strong[Jacobian];, #strong[JPattern];, #strong[JConstant];, #strong[BDF];, #strong[MaxOrder];, #strong[MassSingular];, #strong[MStateDependence];, and #strong[MvPattern];. Explicit step-size options must be positive.

 When the time span has only two values, #strong[Refine]; inserts additional output points inside each accepted step. With longer time spans, requested time points define the public output points. #strong[OutputFcn]; is called at these refined or requested output points; returning scalar #strong[true]; stops integration at the current output point. #strong[Stats]; set to #strong[on]; prints step and evaluation counters. #strong[NormControl]; set to #strong[on]; uses a vector norm in the adaptive error test. #strong[Vectorized]; set to #strong[on]; allows vectorized right-hand side calls during finite-difference Jacobian construction. #strong[JPattern]; supplies the nonzero pattern used by stiff entries and the implicit entry when a finite-difference Jacobian is needed. #strong[JConstant]; set to #strong[on]; reuses the Jacobian inside each linearly implicit step.


== Examples

Refined output points.

``````matlab
options = odeset('Refine', 4, 'MaxStep', 0.5);
[t, y] = ode45(@(t,y) y, [0 1], 1, options)
``````

Stats and a Jacobian for a stiff entry point.

``````matlab
f = @(t,y) -1000 * (y - cos(t)) - sin(t);
options = odeset('Jacobian', -1000, 'Stats', 'on');
[t, y] = ode15s(f, [0 0.5], 1, options)
``````

Vector norm control.

``````matlab
options = odeset('NormControl', 'on');
[t, y] = ode45(@(t,y) [y(1); -2*y(2)], [0 1], [1; 1], options)
``````

Finite-difference Jacobian pattern.

``````matlab
pattern = [1 0; 0 1];
options = odeset('JPattern', pattern, 'Vectorized', 'on');
[t, y] = ode15s(@(t,y) [-10*y(1,:); -20*y(2,:)], [0 0.2], [1; 2], options)
``````

Constant Jacobian hint.

``````matlab
options = odeset('Jacobian', -25, 'JConstant', 'on');
[t, y] = ode15s(@(t,y) -25*y, [0 0.2], 1, options)
``````

Output function at requested points.

``````matlab
out = @(t,y,flag) false;
options = odeset('OutputFcn', out);
[t, y] = ode45(@(t,y) y, [0 0.25 0.5], 1, options)
``````


== See also

#nlink(<ode_solvers:odeget>)[odeget];, #nlink(<ode_solvers:ode45>)[ode45];, #nlink(<ode_solvers:ode15s>)[ode15s];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
