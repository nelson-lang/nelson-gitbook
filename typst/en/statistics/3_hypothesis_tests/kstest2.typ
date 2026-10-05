#import "../nelson_help.typ": *

= kstest2 <statistics:3_hypothesis_tests.kstest2>

Two-sample Kolmogorov-Smirnov test

== Syntax

- #raw("h = kstest2(x1, x2)");
- #raw("h = kstest2(x1, x2, 'Alpha', alpha)");
- #raw("h = kstest2(x1, x2, 'Tail', tail)");
- #raw("[h, p, ks2stat] = kstest2(...)");

== Input argument

/ x1: real vector: first sample.
/ x2: real vector: second sample.
/ alpha: scalar in (0,1), 0.05 by default: significance level.
/ tail: 'unequal', 'larger', or 'smaller'.

== Output argument

/ h: logical scalar: test decision.
/ p: asymptotic p-value.
/ ks2stat: two-sample test statistic.

== Description

#strong[kstest2]; compares the empirical distributions of two sample vectors.

 NaN sample values are omitted independently before sorting and computing the empirical distributions.


== Example

``````matlab
x1 = [1 2 3 4 5];
x2 = [2 3 4 6 8 10];
[h, p, ks2stat] = kstest2(x1, x2);
[h2, p2] = kstest2(x1, x2, 'Tail', 'larger');
``````


== See also

#nlink(<statistics:3_hypothesis_tests.kstest>)[kstest];, #nlink(<statistics:3_hypothesis_tests.ttest2>)[ttest2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
