# ode events tutorial

Locate events during ODE integration.

## 📄 Description

Use the <b>Events</b> option to stop or record integration points where an event function crosses zero. Event functions return value, terminal, and direction arrays.

| Event output     | Meaning                                                        |
| ---------------- | -------------------------------------------------------------- |
| **te** or **xe** | Time or independent variable value where an event was located. |
| **ye**           | Solution at the event point.                                   |
| **ie**           | Index of the event function that crossed zero.                 |
| **isterminal**   | Nonzero values stop integration at the event.                  |

Use terminal events to stop at thresholds and nonterminal events to collect diagnostic times without stopping the integration.

## 💡 Examples

Stop when the state reaches one half.

```matlab
function [value,isterminal,direction] = localHalfEvent(t, y)
  value = y - 0.5;
  isterminal = 1;
  direction = 1;
end
options = odeset('Events', @localHalfEvent);
[t, y, te, ye, ie] = ode45(@(t,y) 1, [0 1], 0, options)
```

Use an event object in the object workflow.

```matlab
event = odeEvent('EventFcn', @(t,y) y - 0.5, 'Response', 'stop');
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', event);
result = solve(problem, 0, 1)
```

## 🔗 See also

[odeset](../ode_solvers/odeset.md), [odeEvent](../ode_solvers/odeEvent.md), [ode45](../ode_solvers/ode45.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
