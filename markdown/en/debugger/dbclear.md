# dbclear

Remove breakpoints during debugging.

## 📝 Syntax

- dbclear all
- dbclear in file
- dbclear in file at location

## 📥 Input argument

- file - File name where breakpoints should be cleared, specified as a character vector or string scalar. A filemarker (>) can be used to specify a local or nested function.
- location - Line number, line number with anonymous function index (e.g., 3@2), or local function name of the breakpoint to clear.

## 📄 Description

<b>dbclear</b> removes breakpoints set for debugging. You can clear all breakpoints, breakpoints in a specific file, breakpoints at a specific location.

<b>dbclear all</b> removes all breakpoints in all files and for all conditions.

<b>dbclear in file</b> removes all breakpoints in the specified file.

<b>dbclear in file at location</b> removes the breakpoint at the specified location in the file.

## 💡 Examples

        Clear all breakpoints in a file.

```matlab

dbstop in buggy at 2
dbstop in buggy at 3
dbstatus
dbclear in buggy
dbstatus

```

        Clear a breakpoint at a specific location.

```matlab

dbstop in buggy at 2
dbstop in buggy at 3
dbclear in buggy at 3
dbstatus

```

## 🔗 See also

[dbstop](../debugger/dbstop.md), [dbstatus](../debugger/dbstatus.md), [dbquit](../debugger/dbquit.md), [dbstack](../debugger/dbstack.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
