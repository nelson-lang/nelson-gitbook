# interpolationPrelookup


<p align="center">
<img src="interpolationPrelookup.svg" width="72"/>
</p>
Interpolates a static Table from a prelookup [k, f] pair.

## 📝 Syntax

- Block type: interpolationPrelookup

## 📥 Input argument

- input ports - 1 input port(s) declared.

## 📤 Output argument

- output ports - 1 output port(s) declared.

## 📄 Description


Interpolates a static Table from a prelookup [k, f] pair. 

| Field | Value |
| --- | --- |
| Module | <code>nflow_blocks</code> | 
| Library | Lookup Tables | 
| Type | <code>interpolationPrelookup</code> | 
| Label | Interpolation Using Prelookup | 

  

<b>Description</b> 

Interpolates the static <code>Table</code> using the index/fraction pair produced by a <code>prelookup</code> block. Input port 0 is the 2-element vector <code>[k, f]</code>; the output is <code>tbl[k] + f * (tbl[k+1] - tbl[k])</code>, i.e. linear interpolation at the shared interval. k is clamped to a valid table index. Sharing one <code>prelookup</code> across several of these blocks avoids repeating the interval search per table. 

Native runtime (the 2-vector input is a follow-up for code generation). 

<b>Ports</b> 

<b>Input(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal read by the block. | left | x=0, y=40 | 

 

<b>Output(s)</b> 

| Port | Role | Side | Position | 
| --- | --- | --- | --- | 
| Port\_1 | Numeric signal produced by the block. | right | x=90, y=40 | 

 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>Table</code> | [0 1 4 9 16] | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | interpolationPrelookup | 
| Family | Lookup Tables | 
| Rendered size | 90 x 80 | 
| Phases | ALGEBRAIC | 
| Internal state or history | no | 
| Signal data type | double numeric values | 

 

<b>Algorithms</b> 

- ALGEBRAIC: out = tbl[k] + f \* (tbl[k+1] - tbl[k]). 

<b>Equation or Rule</b> 
$$y = t_k + f\,(t_{k+1} - t_k)$$
 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/lookup/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/lookup/interpolationPrelookup.cpp`


## 💡 Example

See the prelookup example, which wires prelookup into this block.

```matlab
% See the prelookup example for a complete Prelookup -> Interpolation wiring.
```


## 🔗 See also

[prelookup](../../nflow_blocks/lookup/prelookup.md), [lookup1D](../../nflow_blocks/lookup/lookup1D.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
