# nelsonFunction


<p align="center">
<img src="nelsonFunction.svg" width="72"/>
</p>
Evaluates a Nelson function at every simulation step.

## 📝 Syntax

- Block type: nelsonFunction

## 📥 Input argument

- input ports - 1 input port (u, scalar or vector double). An unconnected input reads as 0.

## 📤 Output argument

- output ports - 1 output port (scalar or vector double).

## 📄 Description


Calls the Nelson interpreter at every simulation step to evaluate <code>Fcn</code> with the block input <code>u</code>. <code>Fcn</code> is a function name (<code>sin</code>), an anonymous function source (<code>@(u) 2*u</code>) or an expression using <code>u</code> (<code>atan2(u(1), u(2))</code>).  

<code>OutputDimensions</code>: -1 inherits the input width (element-wise assumption); set an explicit value when the function changes the signal width. The function is probed once at initialization; a width mismatch stops the simulation with a clear diagnostic, as does any error raised by the function. 

Because the interpreter is invoked at every step, this block is slower than native blocks. For pure math expressions prefer the <code>expression</code> block, which also generates code. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>Fcn</code> | sin | 
| <code>OutputDimensions</code> | -1 | 
| <code>SampleTime</code> | -1 | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | nelsonFunction | 
| Family | User-Defined Function blocks | 
| Phases | INIT, ALGEBRAIC | 
| Direct feedthrough | yes | 
| Signal data type | double, scalar or vector | 
| Code generation | no (rejected with an explicit error; replace with the expression block) | 

 

**Manifest:** `modules/nflow_blocks/libraries/userdefined/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/userdefined/nelsonFunction.cpp`


## 💡 Example

Open the user-defined function demo (Nelson Function + Expression)

```matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/Nelson_Function_Demo.nflow']);
```


## 🔗 See also

[expression](../../nflow_blocks/userdefined/expression.md), [fromWorkspace](../../nflow_blocks/source/fromWorkspace.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
