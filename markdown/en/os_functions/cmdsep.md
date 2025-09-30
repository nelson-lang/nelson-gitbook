# cmdsep

Command separator for current operating system.

## Syntax

- sep = cmdsep()

## Output argument

- sep - a string: on windows "&&", on linux ";"

## Description

<p>
            <b>cmdsep</b> returns the command separator for current operating system.</p>
<p>This function is used by Nelson to build command lines for unix and dos operating systems.</p>

## Example

```matlab
unix("cd c:/ " + cmdsep() + " nelson")
```

## See also

[unix](../os_functions/unix.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.11.0  | initial version |

## Author

Allan CORNET
