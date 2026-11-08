#import "../nelson_help.typ": *

= zpk2tf <control_system:2_model_conversion_interconnection.zpk2tf>

Convert zero-pole-gain model to transfer function.

== Syntax

- #raw("sys = zpk2tf(zpkObj)");

== Input argument

/ zpkObj: a zpk model.

== Output argument

/ sys: the equivalent tf model.

== Description

#strong[sys \= zpk2tf(zpkObj)]; converts a zero-pole-gain model into an equivalent transfer function model.

 The sample time, variable and model metadata of the input model are preserved in the result.


== Example

``````matlab
z = zpk([], [-1 -2], 3);
sys = zpk2tf(z)

``````


== See also

#nlink(<control_system:1_dynamic_system_models.zpk>)[zpk];, #nlink(<control_system:1_dynamic_system_models.tf>)[tf];, #nlink(<control_system:2_model_conversion_interconnection.ss2tf>)[ss2tf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
