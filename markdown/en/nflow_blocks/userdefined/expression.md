# expression


<p align="center">
<img src="expression.svg" width="192"/>
</p>
Evaluates a restricted math expression of u during simulation and in generated code.

## 📝 Syntax

- Block type: expression

## 📥 Input argument

- input ports - 1 input port (u, scalar double).

## 📤 Output argument

- output ports - 1 output port (scalar double).

## 📄 Description


Evaluates the math expression <code>Expr</code> with <code>u</code> (block input), <code>t</code> (current time), <code>dt</code> (step) and the diagram variables. The same expression engine drives the simulation and the C/Rust code generation, so simulated and generated behaviors match.  

Supported grammar: constants <code>pi</code>, <code>e</code>, <code>inf</code>; unary functions <code>abs, ceil, floor, round, sign, sqrt, exp, log, log10, log2, acos, asin, atan, cos, cosh, sin, sinh, tan, tanh, sinc</code>; binary functions <code>pow, atan2, min, max</code>; ternary <code>clamp</code>; operators <code>+ - * / ^</code>. Non-math constructs are rejected at code generation. 

For arbitrary Nelson code (any function, handles), use the <code>nelsonFunction</code> block instead (simulation only). 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>Expr</code> | u | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | expression | 
| Family | User-Defined Function blocks | 
| Phases | INIT, ALGEBRAIC | 
| Direct feedthrough | yes | 
| Signal data type | double, scalar | 
| Code generation | yes (C and Rust) | 

 

Code generation: supported for C and Rust. 

**Manifest:** `modules/nflow_blocks/libraries/userdefined/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/userdefined/expression.cpp`


## 💡 Example

Open the user-defined function demo (Expression + Nelson Function)

```matlab
open_system([modulepath('nflow_blocks'), '/examples/workspace/Nelson_Function_Demo.nflow']);
```


## 🔗 See also

[nelsonFunction](../../nflow_blocks/userdefined/nelsonFunction.md), [gain](../../nflow_blocks/math/gain.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version (replaces the codegen-only userFunc block; the expression block also simulates) |

<!--
## 👤 Author

Allan CORNET
-->
