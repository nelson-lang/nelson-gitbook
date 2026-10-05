# selector


<p align="center">
<img src="selector.svg" width="192"/>
</p>
Selects elements from an input signal by one-based indices.

## 📝 Syntax

- Block type: selector

## 📄 Description


The <b>Selector</b> block copies the elements listed by <b>Indices</b> to its output. Indices are one-based and the output width equals the number of selected indices. 

Indices outside the available input range are clamped to the nearest valid element.  

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/selector.cpp`

