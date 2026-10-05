# load\_system

Load an nflow model from a .nflow file without opening the editor.

## 📝 Syntax

- h = load\_system(fileOrName)

## 📥 Input argument

- args - see the syntaxes above.

## 📤 Output argument

- varargout - see the syntaxes above.

## 📄 Description


<b>load\_system</b> loads an nflow model from a .nflow file without opening the editor.

## 💡 Example



```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
add_line('demo', 'Sine/1', 'Gain/1');
bdclose('demo');
```


## 🔗 See also

[new_system](../nflow_engine/new_system.md), [add_block](../nflow_engine/add_block.md), [add_line](../nflow_engine/add_line.md), [set_param](../nflow_engine/set_param.md), [get_param](../nflow_engine/get_param.md), [save_system](../nflow_engine/save_system.md), [close_system](../nflow_engine/close_system.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
