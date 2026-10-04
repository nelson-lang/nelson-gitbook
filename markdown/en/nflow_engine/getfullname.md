# getfullname

Return the full path of a block or model from its handle.

## 📝 Syntax

- path = getfullname(handle)

## 📥 Input argument

- handle - a numeric handle (block or model), a char block path, or a cell array of handles.

## 📤 Output argument

- path - the full path: 'model/BlockName' for a block handle, 'model' for a model handle. A cell array of handles yields a cell array of paths.

## 📄 Description

<b>getfullname</b> returns the full path that identifies the block or model named by a handle. A block handle yields <b>'model/BlockName'</b>; a model handle yields <b>'model'</b>.

It is the inverse of <b>getSimulinkBlockHandle</b>. A char path is already a full name and is returned unchanged. A cell array of handles yields a cell array of paths of the same shape.

An unknown handle raises an error.

## 💡 Example

```matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
h = getSimulinkBlockHandle('demo/Gain');
path = getfullname(h)
bdclose('demo');
```

## 🔗 See also

[getSimulinkBlockHandle](../nflow_engine/getSimulinkBlockHandle.md), [get_param](../nflow_engine/get_param.md), [find_system](../nflow_engine/find_system.md), [bdroot](../nflow_engine/bdroot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
