#import "nelson_help.typ": *

= odeget <ode_solvers:odeget>

Read an ODE option.

== Syntax

- #raw("value = odeget(options, name)");
- #raw("value = odeget(options, name, defaultValue)");

== Description

#strong[odeget]; returns a named option value or a fallback value.

 

#table(
  columns: 2,
  [Call], [Purpose], 
  [#strong[value \= \*get(options,name)];], [Returns the stored value for #strong[name];.], 
  [#strong[value \= \*get(options,name,default)];], [Returns #strong[default]; when the option is missing or empty.], 
)

== Example

``````matlab
options = odeset('RelTol', 1e-4); value = odeget(options, 'RelTol')
``````


== See also

#nlink(<ode_solvers:odeset>)[odeset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
