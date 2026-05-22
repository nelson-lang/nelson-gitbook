# dbstep

Execute next executable line during debugging.

## 📝 Syntax

- dbstep
- dbstep in
- dbstep out
- dbstep nlines

## 📥 Input argument

- nlines - Positive integer specifying the number of executable lines to step. Execution pauses at breakpoints encountered along the way.

## 📄 Description

<b>dbstep</b> executes the next executable line of the current file during debugging, skipping breakpoints in functions called by that line.

<b>dbstep in</b> steps into any function called on the current line, pausing at the first executable line of the called function.

<b>dbstep out</b> completes execution of the current function and pauses just after returning to the caller. Execution pauses at any breakpoint encountered along the way.

<b>dbstep nlines</b> executes the specified number of lines, pausing at any breakpoint encountered.

These commands can only be used from the command line while debugging.

## 💡 Examples

        Step over a called function.

```matlab

function n = myfile(x)
  n = myfunction(x-1);
end

function z = myfunction(y)
  z = 2/y;
end

dbstop in myfile
myfile(2);
dbstep

```

        Step into a called function.

```matlab

dbstop in myfile
myfile(2);
dbstep in

```

        Step out of the current function.

```matlab

dbstep out

```

        Step multiple lines in one command.

```matlab

dbstep 4

```

## 🔗 See also

[dbstop](../debugger/dbstop.md), [dbcont](../debugger/dbcont.md), [dbquit](../debugger/dbquit.md), [dbstatus](../debugger/dbstatus.md), [dbstack](../debugger/dbstack.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
