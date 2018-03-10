

# system

# dos

# unix

Shell command execution.

## Syntax

- status = system(command)
- status = dos(command)
- status = unix(command)
- [status, output] = system(command)
- [status, output] = dos(command)
- [status, output] = unix(command)
- [status, output] = system(command, '-echo')
- [status, output] = dos(command, '-echo')
- [status, output] = unix(command, '-echo')

## Input argument

 - command - a string: command to execute in command shell.

## Output argument

 - status - an integer value: exit code value of the command.
 - output - a string: output of the command.

## Description


  <p><b>system</b> sends a string to the operating system for execution. Standard output and standard errors of the shell command are written in the calling shell.</p>
  <p><b>[status, output] = system(command, '-echo')</b> forces the output to the Command Window, even though it is also being assigned into a variable.</p>


## Example

```matlab
[s,w] = system('dir');
[s,w] = system('dir','-echo');
```

## See also

[winopen](winopen.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



