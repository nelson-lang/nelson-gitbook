# dbcont

Resume execution from a paused breakpoint.

## 📝 Syntax

- dbcont

## 📄 Description

<b>dbcont</b> resumes execution of file after pausing at a breakpoint. Execution continues until another breakpoint is encountered, a pause condition is met, an error occurs, or execution completes successfully.

Use <b>dbcont</b> to continue execution after examining workspace variables or debugging code.

Note: If you want to edit a file during debugging, it is recommended to first exit debug mode using <b>dbquit</b> to avoid unexpected behavior.

## 💡 Example

        Resume execution after a breakpoint in a function.

```matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy at 2
buggy(5)
dbcont

```

## 🔗 See also

[dbquit](../debugger/dbquit.md), [dbclear](../debugger/dbclear.md), [dbstatus](../debugger/dbstatus.md), [dbstop](../debugger/dbstop.md), [dbstep](../debugger/dbstep.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
