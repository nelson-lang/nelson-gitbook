# rateTransition

Resamples a signal at its own sample time (zero-order hold).

## 📝 Syntax

- Block type: rateTransition

## 📥 Input argument

- input ports - 1 input: the fast-rate signal to resample.

## 📤 Output argument

- output ports - 1 output: the input held at the block's own sample time.

## 📄 Description


Resamples a signal at its own sample time (zero-order hold). 

The block samples its input at multiples of <code>OutPortSampleTime</code> and holds that value between ticks, so it can run slower than the diagram's base step. This is the minimal multi-rate primitive: a value <code><=</code> the base step (or the default <code>-1</code>, inherit) samples every step, degrading to a plain unit delay; a larger value <code>Ts</code>holds the output for <code>Ts / base-step</code> steps. The sampled value appears one base step after the tick (a zero-order hold with data integrity). 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>OutPortSampleTime</code> | -1 | 
| <code>InitialCondition</code> | 0 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | rateTransition | 
| Family | Discrete blocks | 
| Phases | INIT, OUTPUT, UPDATE | 

 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/discrete/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/discrete/rateTransition.cpp`



## 🔗 See also

[unitDelay](../../nflow_blocks/discrete/unitDelay.md), [zoh](../../nflow_blocks/discrete/zoh.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
