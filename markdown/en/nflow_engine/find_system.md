# find\_system

List the blocks of a model, optionally filtered by type.

## 📝 Syntax

- paths = find\_system(sys)
- paths = find\_system(sys, 'BlockType', type)

## 📥 Input argument

- args - see the syntaxes above.

## 📤 Output argument

- paths - a cell array of path strings ('sys' and 'sys/BlockName').

## 📄 Description


<b>find\_system</b> lists the blocks of a model, optionally filtered by type. 

<b>find\_system(sys)</b> returns the model itself and every block under it, as a cell array of paths ('sys' and 'sys/BlockName'). 

<b>find\_system(sys, 'BlockType', type)</b> returns only the paths of blocks whose type is <b>type</b> (the model itself is omitted). An unknown property name is an error.

## 💡 Example



```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/Sine');
add_block('nflow/math/gain', 'demo/Gain', 'gain', 2);
paths = find_system('demo')
gains = find_system('demo', 'BlockType', 'gain')
bdclose('demo');
```


## 🔗 See also

[new_system](../nflow_engine/new_system.md), [add_block](../nflow_engine/add_block.md), [get_param](../nflow_engine/get_param.md), [set_param](../nflow_engine/set_param.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
