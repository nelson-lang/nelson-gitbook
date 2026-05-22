# dbstop

Set breakpoints for debugging.

## 📝 Syntax

- dbstop in file
- dbstop in file at location
- dbstop(b)

## 📥 Input argument

- file - file name where the breakpoint is set, specified as a character vector or string scalar. The file must be accessible on the search path or in the current folder. A filemarker (>) can be used to specify a local function.
- location - breakpoint location in the file. a line number.
- b - structure array previously returned by <b>dbstatus</b>, containing saved breakpoints to restore.

## 📄 Description

<b>dbstop</b> sets breakpoints in programs for interactive debugging. When execution reaches a breakpoint, execution pauses and the interpreter enters debug mode.

Breakpoints can be set at specific files or at specific locations.

This function can only be called from the command line.

Text editor support debugging features integrate with these functions to provide a seamless debugging experience.

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

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
