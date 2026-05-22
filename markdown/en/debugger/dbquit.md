# dbquit

Quit debug mode.

## 📝 Syntax

- dbquit
- dbquit all

## 📥 Input argument

- all - optional keyword to quit debug mode for all paused functions.

## 📄 Description

<b>dbquit</b> terminates debug mode. The command window returns to the standard prompt (<code> > >
</code>). The file being executed is not completed and no output arguments are returned. All breakpoints remain active.

If the debugger is active in more than one function, <b>dbquit</b> exits debug mode only for the currently active function. Other paused functions remain in debug mode until <b>dbquit</b> is called again.

If execution is paused in a function that was reached by stepping into another function, <b>dbquit</b> terminates debugging for both functions.

<b>dbquit all</b> terminates debugging for all files simultaneously.

This function can only be called from the command line while debugging.

## 💡 Examples

        Quit debugging for the active function.

```matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy
buggy(5)
dbquit

```

        Quit debugging for all paused functions.

```matlab

dbquit all

```

## 🔗 See also

[dbcont](../debugger/dbcont.md), [dbclear](../debugger/dbclear.md), [dbstack](../debugger/dbstack.md), [dbstatus](../debugger/dbstatus.md), [dbstop](../debugger/dbstop.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
