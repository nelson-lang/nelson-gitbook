# fmiCoSimulate

Run a fixed-step Co-Simulation of an FMI 2.0 or 3.0 FMU.

## 📝 Syntax

- result = fmiCoSimulate(fmu, tStop)
- result = fmiCoSimulate(fmu, tStop, dt)
- result = fmiCoSimulate(fmu, tStop, dt, inputs)

## 📥 Input argument

- fmu - a string scalar or character row vector: the path to a <b>.fmu</b> archive, or to an already-extracted FMU directory. The FMU must provide the Co-Simulation interface (see <b>fmiInfo</b>).
- tStop - a positive real scalar: the stop time of the simulation, in the FMU time unit (seconds). The simulation starts at time <b>0</b>.
- dt - an optional positive real scalar: the communication step size. When omitted it defaults to <b>tStop / 100</b> (one hundred steps). It is clamped to <b>tStop</b> when larger.
- inputs - an optional scalar structure whose field names are FMU <b>Float64</b> input variables and whose values are the constant values held on those inputs for the whole run, for example <b>struct('u', 2.5)</b>. Inputs not listed keep their FMU start values.

## 📤 Output argument

- result - a scalar structure holding the recorded trajectory, with the fields <b>time</b>, <b>outputNames</b>, and <b>outputs</b> described below.

## 📄 Description


<b>fmiCoSimulate</b> runs a <b>Co-Simulation</b> of a <b>Functional Mock-up Unit</b> (FMU) that follows the <b>FMI 2.0</b> or <b>3.0</b> standard and returns the values of every <b>Float64</b> output at each communication point. 

The FMU is instantiated, initialized between time <b>0</b> and <b>tStop</b>, and then advanced with a fixed communication step <b>dt</b>. At the start of each step the current <b>Float64</b> outputs are recorded; the FMU is then advanced by one step. The loop stops at <b>tStop</b>, or earlier if the FMU requests termination. The FMU is always terminated and freed before the function returns, including on error. 

No external inputs are applied: the parameters and inputs of the FMU keep the start values declared in its model description. The function therefore reproduces the free response of the model as packaged. Applying custom inputs is not yet supported by this entry point. 

The <b>fmu</b> argument accepts either a <b>.fmu</b> archive or an already-extracted directory. A <b>.fmu</b> archive is unpacked with a ZIP-slip-hardened extractor into a fresh temporary directory that is removed automatically when the function returns; entries with absolute paths, drive letters, or <b>..</b> traversal are rejected. 

The returned structure <b>result</b> has the following fields: 

| Field | Size | Details | 
| --- | --- | --- | 
| time | N x 1 | the communication points, starting at **0** and strictly increasing by **dt** (the last point may be shorter when the FMU terminates early). | 
| outputNames | 1 x nOut | a cell of the names of the **Float64** output variables, in declaration order. | 
| outputs | N x nOut | the recorded output values; column **j** is the trajectory of **outputNames{j}**, row **i** corresponds to **time(i)**. | 

 

The number of rows <b>N</b> is <b>floor(tStop / dt) + 1</b> for a run that completes at <b>tStop</b>. When the FMU declares no <b>Float64</b> output, <b>outputNames</b> is empty and <b>outputs</b> has zero columns while <b>time</b> is still returned. 

Use <b>fmiInfo</b> first to inspect the variables and confirm the Co-Simulation interface. An error is raised when <b>tStop</b> is not positive, when the FMU does not support Co-Simulation, or when any FMI call fails.

## 💡 Examples

Run a Co-Simulation with the default step size.

```matlab
result = fmiCoSimulate('VanDerPol.fmu', 20)
```
Run with an explicit communication step and plot the outputs.

```matlab
r = fmiCoSimulate('VanDerPol.fmu', 20, 0.01);
plot(r.time, r.outputs);
legend(r.outputNames);
xlabel('time');
title('FMU Co-Simulation outputs');
```
Extract a single named output from the result.

```matlab
r = fmiCoSimulate('VanDerPol.fmu', 20, 0.01);
col = find(strcmp(r.outputNames, 'x0'));
x0 = r.outputs(:, col);
```
Drive an FMU input with a constant value (bundled Feedthrough FMU).

```matlab
fmu = [modulepath('nflow_fmi', 'root'), '/examples/Feedthrough.fmu'];
r = fmiCoSimulate(fmu, 2, 0.1, struct('Float64_continuous_input', 2.5));
col = find(strcmp(r.outputNames, 'Float64_continuous_output'));
r.outputs(end, col)
```


## 🔗 See also

[fmiInfo](../nflow_fmi/fmiInfo.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
