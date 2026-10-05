#import "nelson_help.typ": *

= nflow\_dashboard <nflow_gui:nflow_dashboard>

Monitor and adjust NFlow simulations with interactive Dashboard blocks.

== Syntax

- #raw("Dashboard library: displays, controls, bindings, and callback actions");

== Description

Dashboard blocks provide controls and displays directly on an NFlow diagram. They have no regular input or output ports: each block reads or writes a target selected in the #strong[Binding]; section of the inspector.

 #strong[Available blocks];

 

#table(
  columns: 3,
  [Family], [Blocks], [Purpose], 
  [Signal displays], [Dashboard Scope, Display], [Plot timestamped samples or show the latest typed value.], 
  [Gauges], [Gauge, Half Gauge, Quarter Gauge, Linear Gauge], [Show a scalar value against limits and optional colored ranges.], 
  [State displays], [Lamp, MultiStateImage], [Map signal values to colors or images.], 
  [Continuous controls], [Edit, Knob, Slider], [Set a scalar parameter or variable to an entered or pointer-selected value.], 
  [State controls], [Push Button, Rotary Switch, Radio Button, Combo Box, Check Box, Rocker Switch, Slider Switch, Toggle Switch], [Select one of the configured numeric states.], 
  [Action], [Callback Button], [Evaluate Nelson code on click or press without a binding.], 
)
 
#align(center)[#image("nflow_dashboard_library.png")]


 #strong[Creating a binding];

 Select a Dashboard block, then choose the target in the inspector. The status below the selector reports #strong[Valid binding];, #strong[Not connected];, or a precise error. Bindings use stable block identifiers, so saving, reopening, renaming, copying, and nested subsystems do not depend on displayed labels.

 

#table(
  columns: 3,
  [Target], [Used by], [Configuration and timing], 
  [Signal], [All display blocks], [Select a block output, its one-based port, and Sample or Frame processing. Values are read after each major simulation step.], 
  [Parameter], [All controls except Callback Button], [Select a block, a numeric adjustable parameter, and optionally one scalar element. A validated change is visible at the next major step.], 
  [Variable], [All controls except Callback Button], [Select the Diagram, Base, or Global workspace, a numeric variable, and optionally one scalar element.], 
)
 Use one-based element notation such as #strong[(2)]; or #strong[(2,3)];. Empty element text selects the complete target and is valid only when that target is scalar. Missing blocks, ports, variables, elements, nonnumeric values, and non-adjustable targets are rejected before simulation.

 
#align(center)[#image("nflow_dashboard_binding.png")]


 #strong[Interacting with controls];

 Controls remain usable while a simulation is running, paused, or stopped. A pointer gesture that starts on a control belongs to that control until release, even if the simulation finishes during the gesture. Drag the block body outside the control to move the block. Slider and Knob support pointer dragging, arrow keys for incremental changes, and Home or End for their limits. Native Edit and Combo Box controls release focus when the diagram background is selected.

 #strong[Appearance and behavior];

 

#table(
  columns: 2,
  [Blocks], [Main properties], 
  [All applicable blocks], [#strong[LabelPosition];, #strong[ShowInitialText];, #strong[Opacity];, and #strong[Binding];.], 
  [Dashboard Scope], [#strong[TimeSpan];, #strong[UpdateMode];, #strong[YLimits];, #strong[NormalizeYAxis];, #strong[ScaleAtStop];, legend, grid, ticks, markers, border, and colors.], 
  [Gauges, Slider, Knob], [#strong[Limits];; gauges also support #strong[ScaleColors]; and #strong[ScaleDirection];. Slider and Knob support a Linear or Log #strong[ScaleType];.], 
  [Display and Edit], [Alignment and opacity. Display additionally supports #strong[Format];, #strong[FormatString];, layout, grid visibility, and grid color.], 
  [State controls], [#strong[States]; or #strong[Values];, labels, optional enumerated data type, button type, text, and icon properties where applicable.], 
  [Lamp and MultiStateImage], [Default and state colors, or state images with #strong[ScaleMode];.], 
)
 Limits and states are validated by the inspector. Log scales require positive usable limits. Opacity is between 0 and 1. Dashboard Scope clips its plot to the block interior and to the configured Y limits.

 #strong[Callback Button];

 A short click evaluates #strong[ClickFcn];. Holding the pointer for #strong[PressDelay]; milliseconds evaluates #strong[PressFcn];; a positive #strong[RepeatInterval]; repeats that action while held. The default press delay is 500 ms. Callback errors are reported in the Console and do not stop the simulation.

 #strong[C and Rust code generation];

 

#table(
  columns: 2,
  [Capability], [Dashboard behavior], 
  [Instrumentation], [Display blocks are validated, then removed from generated code without changing numerical results.], 
  [Tunable], [A supported scalar control target becomes a typed field of #strong[ModelState]; with a stable setter. A change between two step calls applies to the next step.], 
  [Unsupported], [Callback Button code is never generated. Structural, composite, and unsupported targets are rejected before files are written.], 
)

== Examples

Open a runnable signal-display and Slider binding example.

``````matlab
open_system([modulepath('nflow_blocks'), '/examples/Dashboard_Runtime_Demo.nflow']);
``````

Open the gallery containing all 20 Dashboard blocks.

``````matlab
open_system([modulepath('nflow_blocks'), '/examples/Dashboard_Gallery_Demo.nflow']);
``````


== See also

#nlink(<nflow_gui:nflow_workspace>)[nflow\_workspace];, #nlink(<nflow_gui:nflow_solvers>)[nflow\_solvers];, #nlink(<nflow_gui:open_system>)[open\_system];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
