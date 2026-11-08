# dbstatus

List all breakpoints during debugging.

## 📝 Syntax

- dbstatus
- dbstatus file
- dbstatus -completenames
- dbstatus file -completenames
- b = dbstatus(...)

## 📥 Input argument

- file - Only the breakpoints of this file are listed; the error breakpoints are not included.
- -completenames - Shows the full path of the file followed by the function name instead of the function name alone.

## 📤 Output argument

- b - Structure array listing breakpoints currently in effect.

## 📄 Description


<b>dbstatus</b> lists all breakpoints currently set, one line per file: <b>Breakpoint for buggy is on line 3.</b> or <b>Breakpoints for buggy are on lines 2, 3.</b>, followed by the condition of each conditional breakpoint, then by <b>Stop if error.</b> and <b>Stop if caught error.</b> when these error breakpoints are set. 

Assigning the output to a variable <b>b</b> allows you to save and restore breakpoints later using <b>dbstop(b)</b>. 

The output structure array <b>b</b> contains one element per file with breakpoints and one element per error breakpoint. Each element contains:

- <b>name</b>: function name (empty for an error breakpoint) 
- <b>file</b>: full path to the file containing the breakpoints 
- <b>line</b>: row vector of breakpoint line numbers 
- <b>anonymous</b>: row vector of zeros (anonymous function breakpoints are not supported) 
- <b>expression</b>: cell row of the conditions, one per line, empty when unconditional 
- <b>cond</b>: <b>'error'</b> or <b>'caught error'</b> for an error breakpoint, empty otherwise 
- <b>identifier</b>: <b>{'all'}</b> for an error breakpoint, empty otherwise

## 💡 Examples

        List all breakpoints in effect.

```matlab

dbstop in myfile
dbstatus
dbstatus -completenames

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

| Version | 📄 Description     |
| ------- | --------------- |
| 1.16.0   | initial version |
| 2.0.0   | file filter, -completenames, seven-field structure with conditions and error breakpoints |

<!--
## 👤 Author

Allan CORNET
-->
