# gcbh

Return the handle of the current block.

## 📝 Syntax

- h = gcbh()

## 📥 Input argument

-  - 

## 📤 Output argument

- h - a numeric handle for the current block, or the empty matrix <b>[]</b> when no block is selected.

## 📄 Description


<b>gcbh</b> returns a numeric handle for the current block, the block selected in the editor (the same block <b>gcb</b> reports as a path). 

The handle is a reference-style value that can be passed to <b>get\_param</b> and <b>set\_param</b> in place of the block path. It stays valid until the block is deleted or its model is closed. 

<b>gcbh</b> returns the empty matrix <b>[]</b> when no block is selected or no editor is active, mirroring <b>gcb</b>, which returns the empty string in that case.

## 💡 Example



```matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
set_param('demo/Gain', 'Gain', '2');
% In the editor, gcbh() returns the handle of the selected block.
% The same handle is available by path with get_param(path, 'Handle'):
h = get_param('demo/Gain', 'Handle')
get_param(h, 'Gain')
bdclose('demo');
```


## 🔗 See also

[getNFlowBlockHandle](../nflow_engine/getNFlowBlockHandle.md), [getfullname](../nflow_engine/getfullname.md), [get_param](../nflow_engine/get_param.md), [set_param](../nflow_engine/set_param.md), [find_system](../nflow_engine/find_system.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
