# getNFlowBlockHandle

Return the handle of a block by path, or -1 if not found.

## 📝 Syntax

- h = getNFlowBlockHandle(path)
- h = getNFlowBlockHandle(path, load)

## 📥 Input argument

- path - a block path ('model/BlockName'), or a cell array of block paths.
- load - optional logical; when true, an unloaded model is loaded first if it can be found.

## 📤 Output argument

- h - the numeric handle of the block, or <b>-1</b> when it is not found. For a cell array of paths, a numeric array of the same shape.

## 📄 Description


<b>getNFlowBlockHandle</b> returns the numeric handle of a block given its path, or <b>-1</b> when the block does not exist (no error is raised). 

The handle equals <b>get\_param(path, 'Handle')</b> and can be passed to <b>get\_param</b> and <b>set\_param</b> in place of the path. A path that names only a model (with no block) resolves to <b>-1</b>. 

With a cell array of paths, the result is a numeric array of handles of the same shape, each element being the handle or <b>-1</b>. 

When <b>load</b> is true and the model is not loaded, it is loaded first if it can be found; otherwise the result is still <b>-1</b>.

## 💡 Example



```matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
h = getNFlowBlockHandle('demo/Gain')
missing = getNFlowBlockHandle('demo/None')
get_param(h, 'BlockType')
bdclose('demo');
```


## 🔗 See also

[getfullname](../nflow_engine/getfullname.md), [get_param](../nflow_engine/get_param.md), [set_param](../nflow_engine/set_param.md), [find_system](../nflow_engine/find_system.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
