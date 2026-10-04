# new_system

Create and load an empty nflow model.

## 📝 Syntax

- h = new_system()
- h = new_system(name)

## 📥 Input argument

- name - a string: a valid model identifier. When omitted, an automatic name is generated (<b>untitled</b>, <b>untitled1</b>, ...).

## 📤 Output argument

- h - a double: a handle to the loaded model.

## 📄 Description

<b>new_system</b> creates an empty nflow model and registers it as loaded. The model is addressed later either by its returned handle or by its name.

Blocks are added with <b>add_block</b>, connected with <b>add_line</b> or <b>NFlow.connectBlocks</b>, configured with <b>set_param</b>, saved with <b>save_system</b> and opened in the editor with <b>open_system</b>.

## 💡 Example

```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
add_block('nflow/sink/scope', 'demo/Scope');
add_line('demo', 'Sine/1', 'Gain/1');
add_line('demo', 'Gain/1', 'Scope/1');
set_param('demo', 'StopTime', 10);
save_system('demo', [tempdir(), 'demo.nflow']);
bdclose('demo');
```

## 🔗 See also

[add_block](../nflow_engine/add_block.md), [add_line](../nflow_engine/add_line.md), [set_param](../nflow_engine/set_param.md), [save_system](../nflow_engine/save_system.md), [close_system](../nflow_engine/close_system.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
