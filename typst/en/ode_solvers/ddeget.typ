#import "nelson_help.typ": *

= ddeget <ode_solvers:ddeget>

Get a DDE option value.

== Syntax

- #raw("value = ddeget(options, name)");
- #raw("value = ddeget(options, name, defaultValue)");

== Description

#strong[ddeget]; retrieves a value from a DDE options structure and returns the default value when the option is empty.

 

#table(
  columns: 2,
  [Call], [Purpose], 
  [#strong[value \= \*get(options,name)];], [Returns the stored value for #strong[name];.], 
  [#strong[value \= \*get(options,name,default)];], [Returns #strong[default]; when the option is missing or empty.], 
)

== Example

Complete DDE and BVP added features example.

``````matlab
rootPath = modulepath('ode_solvers', 'root');
run([rootPath, '/examples/dde_bvp_added_features_example.m'])
``````


== See also

#nlink(<ode_solvers:ddeset>)[ddeset];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
