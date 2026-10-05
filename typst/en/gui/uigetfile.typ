#import "nelson_help.typ": *

= uigetfile <gui:uigetfile>

Opens a file selection dialog box.

== Syntax

- #raw("[file, path, index] = uigetfile");
- #raw("[file, path, index] = uigetfile(filter)");
- #raw("[file, path, index] = uigetfile(filter, title)");
- #raw("[file, path, index] = uigetfile(filter, title, defaultName)");

== Input argument

/ filter: File filter string or cell array. Examples: '\*.m', '\*.nh5', or 'All Files (\*)'.

== Output argument

/ file: Selected file name, or 0 when canceled.

== Description

uigetfile lets the user choose an existing file.


== Examples

Preview a file open dialog layout.

``````matlab
f = dialog('Name', 'Select a script', 'WindowStyle', 'normal', 'Position', [100 100 420 250]);
uicontrol(f, 'Style', 'edit', 'String', pwd(), 'Position', [28 186 350 24]);
uicontrol(f, 'Style', 'listbox', 'String', {'analysis.m', 'startup.m', 'results.nh5'}, 'Value', 1, 'Position', [28 70 350 105]);
uicontrol(f, 'Style', 'pushbutton', 'String', 'Open', 'Position', [220 28 70 24]);
uicontrol(f, 'Style', 'pushbutton', 'String', 'Cancel', 'Position', [304 28 70 24]);
``````


#align(center)[#image("uigetfile_example.svg")]
Open a file picker with several filters.

``````matlab
filters = {'*.m', 'Nelson files'; '*.*', 'All files'};
[file, path, index] = uigetfile(filters, 'Open source file');
if ~isequal(file, 0), disp({file, path, index}); end
``````


== See also

#nlink(<gui:uiputfile>)[uiputfile];, #nlink(<gui:uigetdir>)[uigetdir];, #nlink(<gui:uiopen>)[uiopen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Updated dialog API help.],
)

// Author: Allan CORNET
