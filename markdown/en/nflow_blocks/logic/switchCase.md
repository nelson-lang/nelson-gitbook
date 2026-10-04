# switchCase

Routes an integer control to one of several action outputs.

## 📝 Syntax

- Block type: switchCase

## 📥 Input argument

- input ports - 1 input port: the control value.

## 📤 Output argument

- output ports - One output per case, plus an optional default output.

## 📄 Description

Routes an integer control to one of several action outputs.

The scalar input is truncated toward zero to an integer and matched against <code>CaseConditions</code>, a cell literal such as <code>{1, [7 9 4]}</code>. The first matching case drives its output to <code>1.0</code> and every other output to <code>0.0</code>. With <code>ShowDefaultCase</code> set to <code>on</code>, an unmatched value drives the last (default) output. There is no fall-through. These outputs are meant to gate action subsystems.

<b>Parameters</b>

| Parameter                    | Default value |
| ---------------------------- | ------------- |
| <code>CaseConditions</code>  | {1}           |
| <code>ShowDefaultCase</code> | on            |

<b>Block Characteristics</b>

| Field      | Value        |
| ---------- | ------------ |
| Block type | switchCase   |
| Family     | Logic blocks |
| Phases     | ALGEBRAIC    |

<b>Extended Capabilities</b>

Code generation: supported for C and Rust.

## 🔗 See also

[if](../../nflow_blocks/logic/if.md), [merge](../../nflow_blocks/utility/merge.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
