# fmiModelExchange

Import and integrate an FMI 2.0 or 3.0 Model Exchange FMU.

## 📝 Syntax

- result = fmiModelExchange(fmu, tStop)
- result = fmiModelExchange(fmu, tStop, dt)

## 📥 Input argument

- fmu - a string scalar or character row vector: the path to a <b>.fmu</b> archive, or to an already-extracted FMU directory. The FMU must provide the Model Exchange interface.
- tStop - a positive real scalar: the stop time. The simulation starts at time <b>0</b>.
- dt - an optional positive real scalar: the fixed integration step. When omitted it defaults to <b>tStop / 1000</b>. Model Exchange usually needs a finer step than Co-Simulation because Nelson integrates the states itself.

## 📤 Output argument

- result - a scalar structure with the fields <b>time</b> (N x 1), <b>outputNames</b> (1 x nOut) and <b>outputs</b> (N x nOut).

## 📄 Description

<b>fmiModelExchange</b> imports a <b>Functional Mock-up Unit</b> (FMU) that follows the <b>FMI 2.0</b> or <b>3.0</b> <b>Model Exchange</b> interface and integrates it with Nelson's own solver.

The key difference with <b>fmiCoSimulate</b> is who owns the solver. A Co-Simulation FMU contains its own solver and is advanced with <b>doStep</b>. A Model Exchange FMU exposes only the model equations (state derivatives, outputs and event indicators); the importing tool provides the solver. <b>fmiModelExchange</b> integrates the FMU's continuous states with a fixed-step fourth-order Runge-Kutta method and handles state events detected at step boundaries (entering event mode, running the discrete-update fixed point, and re-reading the continuous states).

No external inputs are applied: the parameters and inputs keep their start values. An error is raised when the FMU does not provide the Model Exchange interface.

## 💡 Example

Integrate the Van der Pol oscillator as a Model Exchange FMU.

```matlab
fmu = [modulepath('nflow_fmi', 'root'), '/examples/VanDerPol.fmu'];
r = fmiModelExchange(fmu, 20, 0.01);
plot(r.time, r.outputs); legend(r.outputNames);
```

## 🔗 See also

[fmiCoSimulate](../nflow_fmi/fmiCoSimulate.md), [fmiInfo](../nflow_fmi/fmiInfo.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
