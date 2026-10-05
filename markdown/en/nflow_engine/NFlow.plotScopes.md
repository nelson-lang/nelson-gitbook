# NFlow.plotScopes

Open one figure per scope of an nflow simulation result.

## 📝 Syntax

- figures = NFlow.plotScopes(out)
- NFlow.plotScopes(out)

## 📥 Input argument

- out - the structure returned by <b>sim</b> (it must hold a <b>logsout</b> field).

## 📤 Output argument

- figures - a vector of figure handles, one per plotted scope.

## 📄 Description


<b>NFlow.plotScopes</b> opens one figure per logged signal in <b>out.logsout</b>, drawing every channel of a scope as a line on the same axes. Each figure is titled with the scope identifier. 

It is handy as a model <b>stopFcn</b>: set a model's StopFcn to <b>NFlow.plotScopes(out)</b> so the scope traces pop up automatically when the simulation stops, both from <b>sim</b> and from the nflow editor's Run button.

## 💡 Example

Simulate a demo and plot its scopes.

```matlab
model = [modulepath('nflow_blocks'), '/examples/causal/Second_Order_Responses_Demo.nflow'];
out = sim(model);
NFlow.plotScopes(out);
```


## 🔗 See also

[sim](../nflow_engine/sim.md), [scope](../nflow_blocks/sink/scope.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
