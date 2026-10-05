# dos

Execute a command with the operating system shell.

## 📝 Syntax

- status = dos(command)
- [status, output, duration] = dos(command)

## 📥 Input argument

- command - string scalar or character vector: command to execute in the operating system shell.
- '-echo' - optional flag that also displays command output in the command window.

## 📤 Output argument

- status - integer exit status returned by the shell command.
- output - text captured from standard output and standard error.
- duration - execution duration in milliseconds.

## 📄 Description


dos executes a command through the operating system shell and returns the exit status. 

With output arguments, Nelson can also return the command text output and execution duration. dos follows the same command execution model as system.

## Used function(s)


    system
  

## 💡 Example

Run a shell command and capture its output.

```matlab
[status, output] = dos('echo Nelson')
```


## 🔗 See also

[system](../os_functions/system.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
