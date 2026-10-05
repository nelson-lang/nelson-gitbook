# reshape


<p align="center">
<img src="reshape.svg" width="72"/>
</p>
Changes signal dimensions without changing element values.

## 📝 Syntax

- Block type: reshape

## 📄 Description


The <b>Reshape</b> block preserves element order and assigns the dimensions specified by <b>OutputDimensions</b>. 

The input and output must contain the same number of elements. A mismatch is reported as a simulation diagnostic.  

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/reshape.cpp`

