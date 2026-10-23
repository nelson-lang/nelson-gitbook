#import "../nelson_help.typ": *

= zpk <control_system:1_dynamic_system_models.zpk>

Constructs a zero-pole-gain model.

== Syntax

- #raw("sys = zpk()");
- #raw("sys = zpk('s')");
- #raw("sys = zpk(z, p, k)");
- #raw("sys = zpk(z, p, k, Ts)");
- #raw("sys = zpk(sysIn)");

== Input argument

/ z: zeros: a vector (or cell array of vectors).
/ p: poles: a vector (or cell array of vectors).
/ k: scalar gain.
/ Ts: Sampling time Ts, default: in seconds
/ sysIn: LTI model.

== Output argument

/ sys: Output zero-pole-gain system model.

== Description

#strong[sys \= zpk(z, p, k)]; creates a continuous-time zero-pole-gain model.

 The model represents the transfer function #strong[k \* (s - z(1))...(s - z(end)) \/ ((s - p(1))...(s - p(end)))]; where #strong[z]; are the zeros, #strong[p]; the poles and #strong[k]; the scalar gain.

 When you include the #strong[Ts]; parameter, it allows you to create a discrete-time zero-pole-gain model.

 #strong[sys \= zpk(sysIn)]; converts the LTI model #strong[sysIn]; (#strong[tf]; or #strong[ss];) into a zero-pole-gain model.

 Complex zeros and poles of a real system must come in conjugate pairs. The model is displayed in factored form.


== Examples

``````matlab
z = -1;
p = [-2 -3];
k = 5;
sys = zpk(z, p, k)
``````

``````matlab
sys = zpk(-1, [-2 -3], 5);
G = tf(sys)
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
