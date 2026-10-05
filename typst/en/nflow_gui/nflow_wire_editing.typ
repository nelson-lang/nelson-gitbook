#import "nelson_help.typ": *

= nflow\_wire\_editing <nflow_gui:nflow_wire_editing>

Wire routing and editing in the nflow editor.

== Syntax

- #raw("Concept page: wire routing, pinned waypoints, rounded bends");

== Description

#strong[Creating a connection];

 Drag from an output port toward an input port. A ghost wire follows the pointer, compatible targets are highlighted, and the active target is emphasized without moving the diagram. An incompatible target is refused immediately with a short explanation in Diagnostics.

 The nflow editor routes connection wires automatically with an orthogonal (horizontal\/vertical) router that avoids blocks, spreads overlapping wires apart, draws hop arcs at crossings, and keeps routes stable across edits (a rerouted wire keeps its shape unless a clearly better route exists).

 #strong[Behavior while dragging blocks];

 While a block is dragged, its wires are deformed locally: only the segments attached to the moved ports stretch, the rest of each route stays frozen. As soon as the pointer pauses (about 50 ms), the router computes real routes in the background and applies them only when they are clearly better; wires never flicker or jump. The final routes are computed on drop.

 #strong[Editing a wire segment];

 Hover an interior segment of a wire: the cursor changes to a resize arrow. Drag the segment perpendicular to itself to place it where you want; its neighbor segments stretch to follow. On release, the moved segment ends become #strong[pinned waypoints];: the wire keeps this exact shape through automatic rerouting, and other wires route around it.

 Pinned wires are drawn with a slightly stronger stroke and small anchor dots on the pinned waypoints. When one of the wire's blocks moves, only the free parts between the ports and the pinned anchors are rerouted; the pinned middle is preserved verbatim.

 To hand a pinned wire back to the automatic router, double-click it, or right-click it and choose #strong[Auto-route Wire];.

 Pinned waypoints are saved in the #strong[.nflow]; file (each pinned point is stored as #raw("[x, y, 1]"); in the connection's #raw("points"); array) and restored on load; undo and redo cover segment edits.

 #strong[Appearance];

 Wire bends are drawn with small rounded corners by default. Set the UI preference #raw("nflow.wireRoundedCorners"); to #raw("0"); to draw sharp corners instead.

 Crossings between wires are drawn as small hop arcs; exactly one of the two crossing wires draws the hop, chosen deterministically.


== See also

#nlink(<nflow_gui:nflow_workspace>)[nflow\_workspace];, #nlink(<nflow_gui:open_system>)[open\_system];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
