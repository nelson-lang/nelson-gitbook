# if

Selects an action output from a boolean expression over the inputs.

## 📝 Syntax

- Block type: if

## 📥 Input argument

- input ports - The signals u1..un referenced by the expressions.

## 📤 Output argument

- output ports - One output for the if clause, one per elseif, plus an optional else output.

## 📄 Description


Selects an action output from a boolean expression over the inputs. 

The if clause and each elseif clause are evaluated in order over the inputs <code>u1..un</code>; the first true clause drives its output to <code>1.0</code> and every other output to <code>0.0</code>. With <code>ShowElse</code> set to <code>on</code>, an all-false result drives the last (else) output. The expression grammar is restricted: comparisons (<code>< <= > >= == ~=</code>), logic (<code>& | ~</code>), parentheses, unary minus, numeric literals and <code>u<k></code> inputs. These outputs are meant to gate action subsystems. 

<b>Parameters</b> 

| Parameter | Default value | 
| --- | --- | 
| <code>IfExpression</code> | u1 > 0 | 
| <code>ElseIfExpressions</code> | (comma-separated, empty by default) | 
| <code>ShowElse</code> | on | 

 

<b>Block Characteristics</b> 

| Field | Value |
| --- | --- |
| Block type | if | 
| Family | Logic blocks | 
| Phases | ALGEBRAIC | 

 

<b>Extended Capabilities</b> 

Code generation: supported for C and Rust.


## 🔗 See also

[switchCase](../../nflow_blocks/logic/switchCase.md), [merge](../../nflow_blocks/utility/merge.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
