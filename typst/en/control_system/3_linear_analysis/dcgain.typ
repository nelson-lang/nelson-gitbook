#import "../nelson_help.typ": *

= dcgain <control_system:3_linear_analysis.dcgain>

Low-frequency (DC) gain of LTI system.

== Syntax

- #raw("k = dcgain(sys)");

== Input argument

/ sys: a LTI model.

== Output argument

/ k: DC gain.

== Description

#strong[k \= dcgain(sys)]; computes the DC gain #strong[k]; of the LTI model sys.


== Example

``````matlab
A = [1 2; 3 4];
B = [1 0; 0 1];
C = [1 1; 1 1];
D = [0 0; 0 0];
sys = ss(A, B, C, D);
K = dcgain(sys)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.tf>)[tf];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
