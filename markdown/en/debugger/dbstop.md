# dbstop

Set breakpoints for debugging.

## 📝 Syntax

- dbstop in file
- dbstop in file at location
- dbstop in file if expression
- dbstop in file at location if expression
- dbstop if error
- dbstop if caught error
- dbstop(b)

## 📥 Input argument

- file - file name where the breakpoint is set, specified as a character vector or string scalar. The file must be accessible on the search path or in the current folder. A filemarker (>) can be used to specify a local function. A filemarker cannot be combined with <b>at location</b>.
- location - breakpoint location in the file: a line number, or the name of a local function (its first executable line is used). A breakpoint requested on a comment, a blank line or a function declaration moves to the next executable line. The <b>end</b> line of a for or while loop is a breakpoint location of its own: execution pauses there at every iteration.
- expression - condition evaluated in the workspace of the paused function each time the line is reached. Execution pauses only when the expression is a scalar logical or numeric value that is true. A non-scalar value or an expression that fails raises a warning and pauses execution anyway. A syntax error is rejected when the breakpoint is set. Setting a breakpoint again on the same line replaces its condition.
- b - structure array previously returned by <b>dbstatus</b>, containing saved breakpoints to restore. The seven fields <b>name</b>, <b>file</b>, <b>line</b>, <b>anonymous</b>, <b>expression</b>, <b>cond</b> and <b>identifier</b> are required; conditions and error breakpoints are restored as well.

## 📄 Description


<b>dbstop</b> sets breakpoints in programs for interactive debugging. When execution reaches a breakpoint, execution pauses, the line about to run is displayed and the interpreter enters debug mode (prompt <b>K>></b>). 

<b>dbstop if error</b> pauses execution on the line that raises a run-time error not caught by a <b>try</b>/<b>catch</b> block. The error is reported, the variables of the paused function can be inspected, and <b>dbcont</b>, <b>dbstep</b> or <b>dbquit</b> end the execution. 

<b>dbstop if caught error</b> pauses execution on a run-time error raised inside the <b>try</b> part of a <b>try</b>/<b>catch</b> block; <b>dbcont</b>resumes in the <b>catch</b> block. The conditions <b>warning</b> and <b>naninf</b> are not supported. 

Breakpoints are kept until <b>dbclear</b> removes them or the session ends. This function can only be called from the command line. 

Text editor debugging features integrate with these functions for interactive debugging. 

See also the [Debugging Workflow](../text_editor/debugging_workflow.md) for an overview of debugging in Nelson.

## 💡 Examples

        Pause execution at the first executable line of a function.

```matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy
buggy(1:5)

```
        Set a breakpoint at a local function.

```matlab

dbstop in myfile>myfunc
dbstop in myfile at myfunc

```
        Pause only when a condition holds.

```matlab

dbstop in buggy at 3 if n > 2
dbstatus

```
        Pause on the line raising an uncaught error.

```matlab

dbstop if error
buggy(1:5)
dbquit
dbclear if error

```
        Restore previously saved breakpoints.

```matlab

b = dbstatus();
dbclear all
dbstop(b)

```


## 🔗 See also

[dbclear](../debugger/dbclear.md), [dbcont](../debugger/dbcont.md), [dbquit](../debugger/dbquit.md), [dbstatus](../debugger/dbstatus.md), [dbstack](../debugger/dbstack.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.16.0   | initial version |
| 2.0.0   | conditional breakpoints, dbstop if error, dbstop if caught error, local function as location, seven-field dbstatus structure |

<!--
## 👤 Author

Allan CORNET
-->
