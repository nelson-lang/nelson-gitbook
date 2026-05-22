# dbup

Move up the call stack in debug mode.

## 📝 Syntax

- dbup
- dbup n

## 📥 Input argument

- n - positive integer scalar specifying the number of levels to move up on the call stack.

## 📄 Description

<b>dbup</b> changes the current workspace and function context to that of the calling function or script while in debug mode. This allows inspection of the caller workspace to understand how input arguments were produced.

Each call to <b>dbup</b> moves one level up the call stack, stopping at the base workspace. Execution can continue without returning to the original paused line.

<b>dbup n</b> is equivalent to executing <b>dbup</b> <i>n</i> times.

This function can only be called from the command line while debugging.

## 💡 Examples

        View the workspace of a calling function while debugging.

```matlab

function n = myfile(x)
  n = myfunc(x - 1);
end

function z = myfunc(y)
  z = 2 / y;
end

dbstop in myfile>myfunc
myfile(1)
dbup
whos

```

        Move up multiple levels on the call stack in one step.

```matlab

dbup 2

```

## 🔗 See also

[dbdown](../debugger/dbdown.md), [dbstack](../debugger/dbstack.md), [whos](../memory_manager/whos.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
