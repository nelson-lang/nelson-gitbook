#import "nelson_help.typ": *

= debugging workflow <text_editor:debugging_workflow>

Debugging workflow for Nelson code files in the editor.

== Description

The Nelson debugger provides interactive tools to diagnose and fix problems in scripts and functions by controlling execution and inspecting program state. The Qt desktop and the web desktop expose the same controls, keys, marker colours and menu labels.

 Before starting a debugging session, save the code files. Breakpoints belong to the saved file: while a file has unsaved changes its markers turn dark gray (invalid) and are re-applied to their new lines when the file is saved. Saving a file while execution is paused ends the debugging session.

 #strong[Breakpoints];

 Click in the left margin next to a line number, or press #strong[F12]; on the line, to set or clear a standard breakpoint (red). A breakpoint requested on a comment, a blank line or a #raw("function"); line moves to the next executable line; the #raw("end"); of a loop or of a function is a stop line of its own. Lines such as #raw("else");, #raw("elseif");, #raw("case");, #raw("otherwise"); and #raw("catch"); move to the next statement.

 Right-click the margin to open the breakpoint menu: #strong[Set\/Clear Breakpoint];, #strong[Set\/Modify Condition...]; (orange conditional breakpoint: execution pauses only when the expression is true; an expression that fails or is not a scalar prints a warning and pauses), #strong[Enable\/Disable Breakpoint]; (light gray when disabled), #strong[Enable\/Disable All Breakpoints in File];, #strong[Clear All Breakpoints in File]; and #strong[Clear All Breakpoints];. The same operations are available from the command line with #strong[dbstop];, #strong[dbclear]; and #strong[dbstatus];; the editor and the Breakpoints panel follow them.

 #strong[Pause on Errors]; (#raw("dbstop if error");) pauses on an uncaught error: the error is displayed, then the line; the workspace of the failing function can be inspected and the session ends with #strong[Continue];, #strong[Step]; or #strong[Stop];. #strong[Pause on Caught Errors]; (#raw("dbstop if caught error");) pauses before a #raw("catch"); block runs; #strong[Continue]; resumes in it.

 #strong[Running and stepping];

 When execution pauses, the file opens in the editor, the current line is highlighted in green with an arrow in the margin, and the command prompt becomes #raw("K>>");. The current line has not been executed yet.

 A stop reached from a command typed in the console also prints the line there, as #raw("3   r = r * 2;");; a stop reached from the editor (Step, Continue, Run to Here, Run) moves the arrow without printing it. The printed line number is a link: a click opens the editor at that line.

 Keys: #strong[F5]; Run, or Continue while paused; #strong[F10]; Step; #strong[F11]; Step In; #strong[Shift+F11]; Step Out; #strong[Shift+F5]; Stop (#raw("dbquit");); #strong[F12]; Set\/Clear Breakpoint; #strong[F9]; Evaluate Selection; #strong[F6]; Pause, which pauses a running program at its next statement; #strong[Ctrl+F10]; Run to Here, which runs to the cursor line and pauses before it.

 While paused, hovering a variable name shows its value (data tip); the Breakpoints panel lists every breakpoint with its condition and enabled state, and the Call Stack panel lists the active functions (click a frame to open it). Each function has its own workspace: stepping into a function switches the Workspace browser to it.

 Breakpoints last until they are cleared or Nelson exits; they are not saved between sessions.


== Examples

Creates demo\_debugger.m for debugging examples.

``````matlab
n = 50;
r = rand(n,1);
plot(r)

m = mean(r);
hold on
plot([0,n],[m,m])
hold off
title("Mean of Random Uniform Data")
``````

Set a breakpoint in the demo\_debugger function. click on the left margin next to the line number to toggle a breakpoint.


#align(center)[#image("set_breakpoint.png")]
Start debugging by calling the demo\_debugger function from the command line or "Run file" button.


#align(center)[#image("stop_at_breakpoint.png")]
Conditional breakpoint and pause on errors from the command line.

``````matlab
dbstop in demo_debugger at 5 if n > 10
dbstop if error
dbstatus
% Breakpoint for demo_debugger is on line 5.
%   Breakpoint on line 5 has conditional expression "n > 10".
%
% Stop if error.
dbclear all
``````


== See also

#nlink(<text_editor:edit>)[edit];, #nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbstep>)[dbstep];, #nlink(<debugger:dbcont>)[dbcont];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstatus>)[dbstatus];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [Initial version],
  [2.0.0], [Conditional breakpoints, enable\/disable, pause on errors, Pause, Run to Here, data tips, function keys and markers, web editor parity.],
)

// Author: Allan CORNET
