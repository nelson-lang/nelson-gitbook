# computer

System information.

## Syntax

- c = computer()
- [c, maxsize] = computer()
- [c, maxsize, endian] = computer()
- arch = computer('arch')

## Input argument

- 'arch' - a string: returns the architecture of the computer.

## Output argument

- c - a string: computer type: 'PCWIN', 'PCWIN64', 'GLNXA64', 'GLNXA32', 'MACI32', 'MACI64'
- maxsize - a integer value: maximum number of elements allowed in an array.
- endian - a string: 'L' for little-endian, 'B' for big-endian.
- arch - a string: architecture type: 'win64', 'win32', 'glnxa64', 'glnxa32', 'maci64', 'maci32'.

## Description

  <p><b>computers</b> identifies the type of computer that Nelson is running on.</p>

## Example

```matlab
c = computer()
[c, maxsize] = computer()
[c, maxsize, endian] = computer()
arch = computer('arch')
```

## See also

[ispc](ispc.md), [ismac](ismac.md), [isunix](isunix.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
