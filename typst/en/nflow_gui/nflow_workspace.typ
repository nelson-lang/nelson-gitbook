#import "nelson_help.typ": *

= nflow\_workspace <nflow_gui:nflow_workspace>

Using the nflow editor workspace.

== Syntax

- #raw("Concept page: library, inspector, simulation controls, and diagnostics");

== Description

The workspace keeps the diagram in the center, with the block library on the left and the contextual inspector on the right. The lower panel contains separate #strong[Console]; and #strong[Diagnostics]; views. Panel visibility and widths are restored when the editor is reopened.

 #strong[Finding and inserting blocks];

 Use the always-visible Library search field to filter block names and categories. The search ignores case and accents. Click a result to insert and select it, drag a result onto the diagram, or double-click an empty diagram area to open Quick insert. The Quick insert button exposes the same command without requiring a shortcut.

 #strong[Managing libraries];

 Open #strong[Manage libraries]; from the Library header to configure ordered search folders and external libraries. The first folder containing a given library identifier has priority. Integrated libraries remain enabled. External libraries can be enabled or disabled, except while blocks from the library are used by the current diagram. Unavailable folders remain listed until they are located again or removed.

 #strong[Editing properties];

 Select a block to open the #strong[Block]; inspector. Its parameters stay visible while the diagram is edited. The Capabilities section reports direct or model-dependent C and Rust code-generation support. An OpenModelica requirement is shown only for blocks that need it. Use the #strong[Model]; tab for simulation settings, variables, diagram metadata, routing, and read-only mode.

 The Model information section shows the model version, creator and creation date, plus the user and date of the last successful save. Description, license and read-only mode are stored with the diagram. Older diagrams without last-save metadata display those values as unavailable.

 In #strong[Settings];, the Modelica section reports whether OpenModelica was detected and is ready for FMU export. When available, it displays the detected version and executable path; otherwise, it explains why detection or export is unavailable.

 #strong[Running a simulation];

 The #strong[Simulation]; menu and the compact toolbar above the diagram expose Run or Resume, Pause, Stop, Reset, and Simulation Settings. The toolbar can be hidden or restored from #strong[View \> Simulation Toolbar];; this choice is restored when the editor is reopened. Stop keeps the results already calculated. Reset stops the simulation when necessary, returns time to zero, and clears the displayed results.

 #strong[Using diagnostics];

 Errors and warnings appear in the Diagnostics tab and in the status-bar counters. Select a diagnostic that references a block to center and select that block in the diagram.

 #strong[Responsive layout];

 On wide windows, the library and inspector can remain open together. On narrower windows the inspector opens when needed, and the workspace limits simultaneous side panels so that the diagram remains usable.

 #strong[Restored preferences];

 NFlow restores the window geometry, visible panels, panel dimensions and tabs, open library and inspector sections, scroll positions, diagnostic filters, code-generation options, recent file-dialog directories, and new-diagram defaults. Zoom and pan are restored when the same saved diagram is opened again. NFlow does not automatically reopen the last diagram.

 Use #strong[View \> Reset UI Preferences]; to remove these interface preferences. The current diagram is not modified, and default values apply to newly opened editor windows.


== See also

#nlink(<nflow_gui:nflow_wire_editing>)[nflow\_wire\_editing];, #nlink(<nflow_gui:nflow_solvers>)[nflow\_solvers];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
