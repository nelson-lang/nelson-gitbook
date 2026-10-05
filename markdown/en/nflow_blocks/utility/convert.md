# convert


<p align="center">
<img src="convert.svg" width="192"/>
</p>
Converts a signal to a selected data type.

## 📝 Syntax

- Block type: convert

## 📄 Description


The <b>Convert</b> block casts every input element to <b>OutDataType</b> while preserving signal dimensions. 

<b>Rounding</b> controls conversion of non-integer values. <b>SaturateOnOverflow</b> selects saturation instead of wraparound when the target range is exceeded.  

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust. 

<b>Implementation Sources</b> 

**Manifest:** `modules/nflow_blocks/libraries/utility/library.json`
 

**Runtime:** `modules/nflow_blocks/src/cpp/routing/convert.cpp`

