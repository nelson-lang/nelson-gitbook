#import "../nelson_help.typ": *

= dummyvar <statistics:6_classification.dummyvar>

Create dummy variables from grouping variables.

== Syntax

- #raw("D = dummyvar(group)");

== Description

#strong[dummyvar]; creates a numeric matrix of indicator columns for the grouping variables in #strong[group];.

 Each numeric matrix column, categorical vector, text vector, or cell element in #strong[group]; contributes one block of dummy variables. Missing group values produce #strong[NaN]; rows in their block.


== Example

``````matlab
Colors = categorical({'Red'; 'Blue'; 'Green'; 'Red'; 'Green'; 'Blue'});
D = dummyvar(Colors)
``````


== See also

#nlink(<statistics:6_classification.grp2idx>)[grp2idx];, #nlink(<statistics:4_anova.anova1>)[anova1];, #nlink(<statistics:9_design_of_experiments.x2fx>)[x2fx];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
