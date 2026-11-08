# dbclear

Remove breakpoints during debugging.

## 📝 Syntax

- dbclear
- dbclear all
- dbclear in file
- dbclear all in file
- dbclear in file at location
- dbclear if error
- dbclear if caught error

## 📥 Input argument

- file - File name where breakpoints should be cleared, specified as a character vector or string scalar. A filemarker (>) can be used to specify a local function.
- location - Line number of the breakpoint to clear. The line is adjusted the same way <b>dbstop</b> adjusts it, so the line used with <b>dbstop</b> clears the breakpoint.

## 📄 Description


<b>dbclear</b> removes breakpoints set for debugging. You can clear all breakpoints, breakpoints in a specific file, breakpoints at a specific location, or the error breakpoints. 

<b>dbclear</b> and <b>dbclear all</b> remove all breakpoints in all files, including <b>dbstop if error</b> and <b>dbstop if caught error</b>. 

<b>dbclear in file</b> and <b>dbclear all in file</b> remove all breakpoints in the specified file; the error breakpoints are kept. 

<b>dbclear in file at location</b> removes the breakpoint at the specified location in the file. 

<b>dbclear if error</b> and <b>dbclear if caught error</b> remove the matching error breakpoint. 

Nothing is reported when no breakpoint matches.

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
        Stop pausing on errors.

```matlab

dbstop if error
dbstatus
dbclear if error
dbstatus

```


## 🔗 See also

[dbstop](../debugger/dbstop.md), [dbstatus](../debugger/dbstatus.md), [dbquit](../debugger/dbquit.md), [dbstack](../debugger/dbstack.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.16.0   | initial version |
| 2.0.0   | dbclear all in file, dbclear if error, dbclear if caught error; line adjustment; silent when no breakpoint matches |

<!--
## 👤 Author

Allan CORNET
-->
