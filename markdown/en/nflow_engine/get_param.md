# get_param

Query a model or block parameter.

## 📝 Syntax

- value = get_param(object, name)

## 📥 Input argument

- args - see the syntaxes above.

## 📤 Output argument

- varargout - see the syntaxes above.

## 📄 Description

<b>get_param</b> queries a model or block parameter.

## 💡 Example

```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
add_line('demo', 'Sine/1', 'Gain/1');
bdclose('demo');
```

## 🔗 See also

[new_system](../nflow_engine/new_system.md), [add_block](../nflow_engine/add_block.md), [add_line](../nflow_engine/add_line.md), [set_param](../nflow_engine/set_param.md), [save_system](../nflow_engine/save_system.md), [close_system](../nflow_engine/close_system.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
