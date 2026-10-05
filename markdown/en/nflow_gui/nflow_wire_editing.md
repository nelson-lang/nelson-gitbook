# nflow\_wire\_editing

Wire routing and editing in the nflow editor.

## 📝 Syntax

- Concept page: wire routing, pinned waypoints, rounded bends

## 📄 Description


<b>Creating a connection</b> 

Drag from an output port toward an input port. A ghost wire follows the pointer, compatible targets are highlighted, and the active target is emphasized without moving the diagram. An incompatible target is refused immediately with a short explanation in Diagnostics. 

The nflow editor routes connection wires automatically with an orthogonal (horizontal/vertical) router that avoids blocks, spreads overlapping wires apart, draws hop arcs at crossings, and keeps routes stable across edits (a rerouted wire keeps its shape unless a clearly better route exists). 

<b>Behavior while dragging blocks</b> 

While a block is dragged, its wires are deformed locally: only the segments attached to the moved ports stretch, the rest of each route stays frozen. As soon as the pointer pauses (about 50 ms), the router computes real routes in the background and applies them only when they are clearly better; wires never flicker or jump. The final routes are computed on drop. 

<b>Editing a wire segment</b> 

Hover an interior segment of a wire: the cursor changes to a resize arrow. Drag the segment perpendicular to itself to place it where you want; its neighbor segments stretch to follow. On release, the moved segment ends become <b>pinned waypoints</b>: the wire keeps this exact shape through automatic rerouting, and other wires route around it. 

Pinned wires are drawn with a slightly stronger stroke and small anchor dots on the pinned waypoints. When one of the wire's blocks moves, only the free parts between the ports and the pinned anchors are rerouted; the pinned middle is preserved verbatim. 

To hand a pinned wire back to the automatic router, double-click it, or right-click it and choose <b>Auto-route Wire</b>. 

Pinned waypoints are saved in the <b>.nflow</b> file (each pinned point is stored as <code>[x, y, 1]</code> in the connection's <code>points</code> array) and restored on load; undo and redo cover segment edits. 

<b>Appearance</b> 

Wire bends are drawn with small rounded corners by default. Set the UI preference <code>nflow.wireRoundedCorners</code> to <code>0</code> to draw sharp corners instead. 

Crossings between wires are drawn as small hop arcs; exactly one of the two crossing wires draws the hop, chosen deterministically.


## 🔗 See also

[nflow_workspace](../nflow_gui/nflow_workspace.md), [open_system](../nflow_gui/open_system.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
