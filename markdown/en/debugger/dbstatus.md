# dbstatus

List all breakpoints during debugging.

## 📝 Syntax

- dbstatus
- b = dbstatus()

## 📤 Output argument

- b - Structure array listing breakpoints currently in effect.

## 📄 Description

<b>dbstatus</b> lists all breakpoints currently set.

Assigning the output to a variable <b>b</b> allows you to save and restore breakpoints later using <b>dbstop(b)</b>.

The output structure array <b>b</b> contains one element per file with breakpoints. Each element contains:

- <b>name</b>: Function name
- <b>file</b>: Full path to file containing breakpoints
- <b>line</b>: Vector of breakpoint line numbers

## 💡 Examples

        List all breakpoints in effect.

```matlab

dbstop in myfile
dbstatus

```

        Save current breakpoints and restore them later.

```matlab

b = dbstatus();
save saved_breakpoints b
dbclear all
load saved_breakpoints
dbstop(b)

```

## 🔗 See also

[dbstop](../debugger/dbstop.md), [dbclear](../debugger/dbclear.md), [dbquit](../debugger/dbquit.md), [dbstack](../debugger/dbstack.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
