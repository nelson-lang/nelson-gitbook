# dbcont

Resume execution from a paused breakpoint.

## 📝 Syntax

- dbcont

## 📄 Description


<b>dbcont</b> resumes execution of file after pausing at a breakpoint. Execution continues until another breakpoint is encountered, a pause condition is met, an error occurs, or execution completes successfully. 

Use <b>dbcont</b> to continue execution after examining workspace variables or debugging code. 

Note: If you want to edit a file during debugging, it is recommended to first exit debug mode using <b>dbquit</b> to avoid unexpected behavior. 

Outside a debug session, <b>dbcont</b> raises <code>Debug commands only allowed when stopped in debug mode.</code> At a stop on an uncaught error, <b>dbcont</b> ends the session without displaying the error again; at a stop on a caught error, execution resumes in the <code>catch</code> block.

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

| Version | 📄 Description     |
| ------- | --------------- |
| 1.16.0   | initial version |
| 2.0.0   | uniform message outside a debug session, behaviour at error stops |

<!--
## 👤 Author

Allan CORNET
-->
