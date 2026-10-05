#import "nelson_help.typ": *

= listdlg <gui:listdlg>

Opens a list selection dialog box.

== Syntax

- #raw("[selection, ok] = listdlg(Name, Value)");

== Input argument

/ 'ListString': Required list entries. Use a cell array of character vectors or a string array.

== Output argument

/ selection: Row vector of selected one-based indices. Empty when canceled.

== Description

listdlg displays selectable text entries and returns the selected indices.


== Examples

Preview a list selection dialog layout.

``````matlab
f = dialog('Name', 'List Selection', 'WindowStyle', 'normal', 'Position', [100 100 360 220]);
uicontrol(f, 'Style', 'text', 'String', 'Select a color:', 'Position', [28 164 150 22]);
uicontrol(f, 'Style', 'listbox', 'String', {'red', 'green', 'blue'}, 'Value', 2, 'Position', [30 70 290 90]);
uicontrol(f, 'Style', 'pushbutton', 'String', 'OK', 'Position', [170 28 70 24]);
uicontrol(f, 'Style', 'pushbutton', 'String', 'Cancel', 'Position', [250 28 70 24]);
``````


#align(center)[#image("listdlg_example.svg")]
Select several entries from a list.

``````matlab
items = {'low', 'medium', 'high'};
[selection, ok] = listdlg('ListString', items, 'SelectionMode', 'multiple', 'InitialValue', [1 3]);
if ok, disp(selection); end
``````


== See also

#nlink(<gui:inputdlg>)[inputdlg];, #nlink(<gui:questdlg>)[questdlg];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Updated dialog API help.],
)

// Author: Allan CORNET
