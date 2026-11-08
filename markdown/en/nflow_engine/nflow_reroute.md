# nflow\_reroute

Recompute the wire routes of an nflow (sub)system.

## 📝 Syntax

- nflow\_reroute(sys)
- nflow\_reroute(sys, width)
- nflow\_reroute(sys, width, height)

## 📥 Input argument

- sys - a string: name of a loaded model (<code>'model'</code>) to route its root diagram, or path of a subsystem (<code>'model/Sub'</code>, <code>'model/Sub/Inner'</code>) to route that subsystem; or a numeric model handle.
- width - a scalar: width of the routing area, in diagram units. Default: 4000.
- height - a scalar: height of the routing area, in diagram units. Default: 4000.

## 📄 Description


<b>nflow\_reroute</b> computes a new route for every connection of a (sub)system and stores it on the connection as a list of waypoints. Routes are orthogonal and go around the blocks, from the output port to the input port. 

Blocks do not move: call <b>nflow\_layout</b> first to arrange them, then <b>nflow\_reroute</b> to draw the wires for the new positions. Port positions are estimated from the number of ports declared by each block type. 

Only the targeted depth is routed: call <b>nflow\_reroute</b> on each subsystem path to route it too. Only the wire geometry changes, so the simulation result is unchanged. 

The model must be loaded (<b>new\_system</b> or <b>load\_system</b>). An unknown subsystem path, or a routing failure, is an error. The model is marked as modified; use <b>save\_system</b> to keep the routes.

## 💡 Example

Arrange a model, route its wires, and read the stored route.

```matlab
new_system('demo');
add_block('nflow/source/sine', 'demo/S');
add_block('nflow/math/gain', 'demo/G', 'Gain', 2);
add_line('demo', 'S/1', 'G/1');
nflow_layout('demo');
nflow_reroute('demo');
f = [tempname(), '.nflow'];
save_system('demo', f);
m = jsondecode(fileread(f));
w = m.connections(1).waypoints;
[[w.x]', [w.y]']
bdclose('demo');
rmfile(f);
```


## 🔗 See also

[nflow_layout](../nflow_engine/nflow_layout.md), [add_line](../nflow_engine/add_line.md), [save_system](../nflow_engine/save_system.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
