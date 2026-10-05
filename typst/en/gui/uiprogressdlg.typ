#import "nelson_help.typ": *

= uiprogressdlg <gui:uiprogressdlg>

Creates a UI progress dialog.

== Syntax

- #raw("d = uiprogressdlg(parent)");
- #raw("d = uiprogressdlg(parent, Name, Value)");

== Input argument

/ parent: Parent UI figure handle, usually created with uifigure.
/ Name, Value: Optional pairs. 'Title' sets the window title, 'Message' sets the label text, 'Value' sets the progress value from 0 to 1, and 'Indeterminate' creates an indeterminate progress indicator when true.

== Output argument

/ d: Dialog handle object.

== Description

uiprogressdlg displays progress for an operation.

 In a web desktop, the dialog is non-blocking. Use the handle properties windowTitle, labelText, value, minimum, maximum and visible to update or hide it.


== Examples

Renderable preview for the help image.

``````matlab
f = figure('Name', 'Progress preview', 'Position', [100 100 420 260], 'Color', [1 1 1]);
axis([0 1 0 1]); axis off; hold on;
patch([0.06 0.94 0.94 0.06], [0.12 0.12 0.88 0.88], [0.97 0.98 0.99], 'EdgeColor', [0.62 0.65 0.68]);

text(0.16, 0.76, 'Working', 'FontSize', 12, 'FontWeight', 'bold');
text(0.22, 0.58, 'Please wait', 'FontSize', 11);
patch([0.22 0.78 0.78 0.22], [0.43 0.43 0.50 0.50], [1 1 1], 'EdgeColor', [0.55 0.55 0.55]);
patch([0.22 0.52 0.52 0.22], [0.43 0.43 0.50 0.50], [0.00 0.45 0.74], 'EdgeColor', [0.00 0.45 0.74]);
patch([0.42 0.58 0.58 0.42], [0.24 0.24 0.35 0.35], [0.95 0.95 0.95], 'EdgeColor', [0.55 0.55 0.55]);
text(0.50, 0.29, 'Cancel', 'HorizontalAlignment', 'center', 'FontSize', 10);
drawnow();
``````


#align(center)[#image("uiprogressdlg_example.svg")]
Show an indeterminate progress dialog.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Import');
d = uiprogressdlg(f, 'Title', 'Import', 'Message', 'Reading data', 'Indeterminate', true);
close(f)
``````

Create, update and delete a progress dialog.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Import');
d = uiprogressdlg(f, 'Title', 'Import', 'Message', 'Reading data', 'Value', 0.25);
set(d, 'value', 60);
set(d, 'labelText', 'Writing data');
delete(d);
close(f)
``````


== See also

#nlink(<gui:waitbar>)[waitbar];, #nlink(<gui:uialert>)[uialert];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Updated dialog API help.],
)

// Author: Allan CORNET
