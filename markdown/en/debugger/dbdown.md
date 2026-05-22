# dbdown

Move down the call stack in debug mode.

## 📝 Syntax

- dbdown
- dbdown n

## 📥 Input argument

- n - positive integer scalar specifying the number of levels to move down on the call stack.

## 📄 Description

<b>dbdown</b> changes the current workspace and function context to that of the called function or script while in debug mode. This command is the opposite of<b>dbup</b> and can only be used after at least one call to <b>dbup</b>.

Each call to <b>dbdown</b> moves one level down the call stack, stopping at the workspace and function context where execution is paused. Execution can continue without returning to the paused line.

<b>dbdown n</b> is equivalent to executing <b>dbdown</b> <i>n</i> times.

This function can only be called from the command line while debugging.

## 💡 Examples

        Move between calling and called function workspaces while debugging.

```matlab

function n = myfile(x)
  n = myfunc(x - 1);
end

function z = myfunc(y)
  z = 2 / y;
end

dbstop in myfile>myfunc
myfile(1)
whos
dbup
whos
dbdown
whos

```

        Move down multiple levels on the call stack in one step.

```matlab

dbdown 2

```

## 🔗 See also

[dbup](../debugger/dbup.md), [dbstack](../debugger/dbstack.md), [whos](../memory_manager/whos.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
