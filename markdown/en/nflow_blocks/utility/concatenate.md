# concatenate


<p align="center">
<img src="concatenate.svg" width="72"/>
</p>
Concatenates input signals along a selected dimension.

## 📝 Syntax

- Block type: concatenate

## 📄 Description


The <b>Concatenate</b> block joins all input signals along <b>ConcatenateDimension</b>. Dimension 1 joins rows, dimension 2 joins columns, and higher values stack along a higher dimension. 

All dimensions other than the concatenation dimension must be compatible.  

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/concatenate.cpp`

