# nflow\_layout

Automatically arrange the blocks of an nflow (sub)system.

## 📝 Syntax

- nflow\_layout(sys)

## 📥 Input argument

- sys - a string: name of a loaded model (<code>'model'</code>) to arrange its root diagram, or path of a subsystem (<code>'model/Sub'</code>, <code>'model/Sub/Inner'</code>) to arrange that subsystem; or a numeric model handle.

## 📄 Description


<b>nflow\_layout</b> computes new positions for the blocks of a (sub)system from their connections: sources on the left, then one column per layer of connectivity, with wire crossings reduced, feedback edges handled and pure sinks grouped on the right. 

Only the targeted depth is arranged: blocks inside nested subsystems keep their positions, call <b>nflow\_layout</b> on each subsystem path to arrange it too. 

Only the geometry changes (block <code>Position</code>); blocks, parameters and connections are left as they are, so the simulation result is unchanged. The layout is deterministic: running it again on the same diagram gives the same positions. 

The model must be loaded (<b>new\_system</b> or <b>load\_system</b>). An unknown subsystem path is an error. The model is marked as modified; use <b>save\_system</b> to keep the new layout.

## 💡 Examples

Build a model from a script, then arrange it.

```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/S');
add_block('nflow/math/gain', 'demo/G1', 'Gain', 2);
add_block('nflow/math/gain', 'demo/G2', 'Gain', 3);
add_line('demo', 'S/1', 'G1/1');
add_line('demo', 'S/1', 'G2/1');
nflow_layout('demo');
get_param('demo/S', 'Position')
get_param('demo/G1', 'Position')
get_param('demo/G2', 'Position')
bdclose('demo');
```
Arrange a nested subsystem.

```matlab
new_system('demo');
add_block('subsystem', 'demo/Sub');
add_block('nflow/source/sine', 'demo/Sub/S');
add_block('nflow/math/gain', 'demo/Sub/G');
add_line('demo', 'Sub/S/1', 'Sub/G/1');
nflow_layout('demo/Sub');
bdclose('demo');
```


## 🔗 See also

[add_block](../nflow_engine/add_block.md), [add_line](../nflow_engine/add_line.md), [get_param](../nflow_engine/get_param.md), [nflow_reroute](../nflow_engine/nflow_reroute.md), [save_system](../nflow_engine/save_system.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
