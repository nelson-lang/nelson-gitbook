#import "../nelson_help.typ": *

= comment <nflow_blocks:utility.comment>


#block-icon(image("comment.svg"))

Adds non-executed annotation text to a diagram.

== Syntax

- #raw("Block type: comment");

== Description

Adds non-executed annotation text to a diagram.

 

#table(
  columns: 2,
  [Module], [#raw("nflow_blocks");], 
  [Library], [Utility blocks], 
  [Type], [#raw("comment");], 
  [Label], [Comment], 
)
  #strong[Description];

 Free-text comment block used to annotate diagrams. Can optionally show a border.

 #strong[Ports];

 #strong[Input(s)];

 This block declares no input ports.

 #strong[Output(s)];

 This block declares no output ports.

 #strong[Parameters];

 

#table(
  columns: 2,
  table.header([Parameter], [Default value], ),
  [#raw("commentText");], [], 
  [#raw("showBorder");], [true], 
)
 #strong[Inspector Keys];

 These serialized keys are exposed by the block inspector.

 

- #raw("commentText");
- #raw("showBorder"); #strong[Block Characteristics];

 

#table(
  columns: 2,
  [Block type], [comment], 
  [Family], [Utility blocks], 
  [Rendered size], [220 x 120], 
  [Phases], [none], 
  [Direct feedthrough], [see Algorithms], 
  [Internal state or history], [not observed in the documented runtime], 
  [Signal data type], [double numeric values], 
)
 #strong[Algorithms];

 

- No native numeric handler and no signal ports.
- Used by the editor and renderer for comment text and border display. #strong[Extended Capabilities];

 This page describes the native runtime behavior observed in the module C++ sources. Declared phases indicate when the simulation engine calls the block.

 #strong[Implementation Sources];

 

#source-ref("modules/nflow_blocks/libraries/utility/library.json", title: "Manifest")

 Runtime: family registry, UI path, or codegen path; no dedicated native runtime file found.


== See also

#nlink(<nflow_blocks:utility.subsystem>)[subsystem];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
