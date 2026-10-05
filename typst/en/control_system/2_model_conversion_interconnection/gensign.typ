#import "../nelson_help.typ": *

= gensig <control_system:2_model_conversion_interconnection.gensign>

Create periodic signals for simulating system response.

== Syntax

- #raw("[u, t] = gensig(type, tau)");
- #raw("[u, t] = gensig(type, tau, Tf)");
- #raw("[u, t] = gensig(type, tau, Tf, Ts)");

== Input argument

/ type: Type of periodic signal: 'cos', 'tan', 'sin', 'pulse', 'square'
/ tau: Period: positive scalar
/ Tf: Duration: positive scalar or 5\*tau (default)
/ Ts: positive scalar or tau\/64 (default)

== Output argument

/ u: Generated signal: column vector.
/ t: Time vector: column vector.

== Description

The function #strong[gensig(type, tau)]; creates a periodic signal with unit amplitude, characterized by the specified type and period.

 The resulting signal, denoted as #strong[u];, and its corresponding time vector,#strong[t];, can be used with #strong[lsim]; to simulate the time response of a single-input dynamic system.

 For multi-input systems, you can generate signals by making repeated calls to #strong[gensig]; and then assemble the resulting #strong[u]; vectors into a matrix. When simulating a dynamic system model with #strong[u]; and #strong[t];, note that the software interprets the time vector #strong[t]; with units based on the TimeUnit property of the model.

 To generate a signal with a specific duration #strong[Tf];, use #strong[\[u, t\] \= gensig(type, tau, Tf)];.

 The time vector #strong[t]; spans from 0 to #strong[Tf]; in increments of #strong[tau\/64];.

 For a signal with a defined sample time #strong[Ts];, employ #strong[\[u, t\] \= gensig(type, tau, Tf, Ts)];.

 In this case, the time vector #strong[t]; ranges from 0 to #strong[Tf]; in increments of #strong[Ts];.

 This syntax is particularly useful for generating signals tailored for discrete-time model simulations, where #strong[Ts]; corresponds to the sample time of the model.


== Example

``````matlab
f = figure();
tau = 3;
Tf = 6;
Ts = 0.1;

subplot(3, 2, 1)
[u,t] = gensig("sine",tau,Tf,Ts);
plot(t, u)
title('sine')

subplot(3, 2, 2)
[u,t] = gensig("square",tau,Tf,Ts);
plot(t, u)
title('square')

subplot(3, 2, 3)
[u,t] = gensig("cos",tau,Tf,Ts);
plot(t, u)
title('cosine')

subplot(3, 2, 4)
[u,t] = gensig("sin",tau,Tf,Ts);
plot(t, u)
title('sine')

subplot(3, 2, 5)
[u,t] = gensig("tan",tau,Tf,Ts);
plot(t, u)
title('tan')

``````


#align(center)[#image("gensig.svg")]

== See also

#nlink(<control_system:4_time_frequency_response.lsim>)[lsim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
