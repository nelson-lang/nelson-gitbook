# bdroot

Return the top-level model of a block path.

## 📝 Syntax

- root = bdroot(obj)

## 📥 Input argument

- obj - a model name or a block path ('model' or 'model/BlockName').

## 📤 Output argument

- root - the top-level model name (the part before the first '/').

## 📄 Description


<b>bdroot</b> returns the top-level model of a block path. 

<b>bdroot('model')</b> is <b>'model'</b>; <b>bdroot('model/Sub/Blk')</b> is <b>'model'</b>. The root model must be loaded.

## 💡 Example



```matlab
new_system('demo');
add_block('nflow/math/gain', 'demo/Gain');
root = bdroot('demo/Gain')
bdclose('demo');
```


## 🔗 See also

[find_system](../nflow_engine/find_system.md), [new_system](../nflow_engine/new_system.md), [get_param](../nflow_engine/get_param.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
