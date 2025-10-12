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

<p>The function gensig(type, tau) creates a periodic signal with unit amplitude, characterized by the specified type and period.</p>

<p>The resulting signal, denoted as u, and its corresponding time vector, t, can be utilized for simulating the time response of a single-input dynamic system using lsim.</p>

<p>For multi-input systems, you can generate signals by making repeated calls to gensig and then assemble the resulting u vectors into a matrix. When simulating a dynamic system model with u and t, note that the software interprets the time vector t with units based on the TimeUnit property of the model.</p>

<p>To generate a signal with a specific duration Tf, use [u, t] = gensig(type, tau, Tf).</p>

<p>The time vector t spans from 0 to Tf in increments of tau/64.</p>

<p>For a signal with a defined sample time Ts, employ [u, t] = gensig(type, tau, Tf, Ts).</p>

<p>In this case, the time vector t ranges from 0 to Tf in increments of Ts.</p>

<p>This syntax is particularly useful for generating signals tailored for discrete-time model simulations, where Ts corresponds to the sample time of the model.</p>

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

<img src="gensig.svg" align="middle"/>

## See also

[lsim](../control_system/lsim.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
