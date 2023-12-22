# gensig

Create periodic signals for simulating system response.

## Syntax

- [u, t] = gensig(type, tau)
- [u, t] = gensig(type, tau, Tf)
- [u, t] = gensig(type, tau, Tf, Ts)

## Input argument

- type - Type of periodic signal: 'cos', 'tan', 'sin', 'pulse', 'square'
- tau - Period: positive scalar
- Tf - Duration: positive scalar or 5\*tau (default)
- Ts - positive scalar or tau/64 (default)

## Output argument

- u - Generated signal: column vector.
- t - Time vector: column vector.

## Description

  <p>The function <b>gensig(type, tau)</b> creates a periodic signal with unit amplitude, characterized by the specified type and period.</p>
  <p>The resulting signal, denoted as <b>u</b>, and its corresponding time vector, <b>t</b>, can be utilized for simulating the time response of a single-input dynamic system using <b>lsim</b>.</p>
  <p>For multi-input systems, you can generate signals by making repeated calls to <b>gensig</b> and then assemble the resulting <b>u</b> vectors into a matrix. When simulating a dynamic system model with <b>u</b> and <b>t</b>, note that the software interprets the time vector <b>t</b> with units based on the TimeUnit property of the model.</p>
  <p>To generate a signal with a specific duration <b>Tf</b>, use <b>[u, t] = gensig(type, tau, Tf)</b>.</p>
  <p>The time vector <b>t</b> spans from 0 to <b>Tf</b> in increments of <b>tau/64</b>.</p>
  <p>For a signal with a defined sample time <b>Ts</b>, employ <b>[u, t] = gensig(type, tau, Tf, Ts)</b>.</p>
  <p>In this case, the time vector <b>t</b> ranges from 0 to <b>Tf</b> in increments of <b>Ts</b>.</p>
  <p>This syntax is particularly useful for generating signals tailored for discrete-time model simulations, where <b>Ts</b> corresponds to the sample time of the model.</p>

## Example

```matlab
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
```

<img src="gensig_1DFEA5A7.svg" align="middle"/>

## See also

[lsim](lsim.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
