#import "nelson_help.typ": *

= discretize <data_analysis:discretize>

Group numeric data into bins.

== Syntax

- #raw("Y = discretize(X, edges)");
- #raw("Y = discretize(X, edges, values)");
- #raw("C = discretize(X, edges, 'categorical', names)");
- #raw("C = discretize(T, 'month', 'categorical')");
- #raw("C = discretize(D, 'hour', 'categorical', format)");

== Description

#strong[discretize]; assigns each numeric value in #strong[X]; to a bin defined by consecutive edge values.

 Datetime values can be grouped by calendar month with categorical month-year labels.

 Duration values can be grouped by hour with interval labels formatted as minutes or time values.


== Examples

Create categorical bins.

``````matlab
X = [5 15 25 NaN];
C = discretize(X, [0 10 20 30], 'categorical', {'small', 'medium', 'large'})
``````

Group normally distributed data into categorical bins.

``````matlab
rng(1);
X = randn(1000, 1);
edges = std(X) * (-3:3);
C = discretize(X, edges, 'categorical', ...
  {'-3sigma', '-2sigma', '-sigma', 'sigma', '2sigma', '3sigma'});
ratio = nnz(C == '-sigma' | C == 'sigma') / numel(C)
``````

Group datetime values by month.

``````matlab
T = datetime(2016, 1, [31; 60; 335]);
C = discretize(T, 'month', 'categorical')
``````

Group duration values by hour.

``````matlab
D = minutes([30; 90; 150; 210]);
C = discretize(D, 'hour', 'categorical', 'hh:mm:ss')
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
