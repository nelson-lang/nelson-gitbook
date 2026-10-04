# odeEvent

Event description for ODE object workflows.

## 📝 Syntax

- E = odeEvent(eventFcn)
- E = odeEvent(name, value)

## 📄 Description

<b>odeEvent</b> stores an event function and event policy for the <b>ode</b> object workflow.

| Object       | Purpose                                                       | Used by                                            |
| ------------ | ------------------------------------------------------------- | -------------------------------------------------- |
| **odeEvent** | Stores a reusable definition for the **ode** object workflow. | The matching **ode** property and **solve**.       |
| Validation   | Checks supported names and shapes at construction time.       | Tests and errors stay explicit before integration. |

<b>EventFcn</b> can return only event values. In that case <b>Direction</b> controls the crossing direction and <b>Response</b> controls whether the solver proceeds or stops. Legacy event functions that return value, terminal flags, and direction are also accepted. These three outputs must contain the same number of finite elements.

<b>Direction</b> accepts <b>both</b>, <b>increasing</b>, or <b>decreasing</b>. <b>Response</b> accepts <b>proceed</b>, <b>stop</b>, or <b>callback</b>. When <b>Response</b> is <b>callback</b>, <b>CallbackFcn</b> is called with event time, event solution, event index, and optional problem parameters. It can return a scalar stop flag and an updated event solution.

## 💡 Examples

Stop when the solution reaches one half.

```matlab
E = odeEvent('EventFcn', @(t,y) y - 0.5, ...
  'Direction', 'increasing', ...
  'Response', 'stop');
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', E);
result = solve(problem, 0, 1)
```

Call a callback at the event point.

```matlab
function [stop, y] = myEventCallback(t, y, index)
  stop = true;
end
E = odeEvent('EventFcn', @(t,y) y - 0.5, ...
  'Response', 'callback', ...
  'CallbackFcn', @myEventCallback);
problem = ode('ODEFcn', @(t,y) 1, 'InitialValue', 0, 'EventDefinition', E);
result = solve(problem, 0, 1)
```

## 🔗 See also

[ode](../ode_solvers/ode.md), [odeset](../ode_solvers/odeset.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
