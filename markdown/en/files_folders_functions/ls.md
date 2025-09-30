# ls

List folder contents.

## Syntax

- ls
- ls(name)
- res = ls()
- res = ls(options)

## Input argument

- name - a string: file or directory name.
- options - vary from system to system.

## Output argument

- res - On Windows, res is an m-by-n character array of names. m is the number of names and n is the number of characters in the longest name. On Unix plaftorms is a character vector of names separated by tab and space characters.

## Description

<p>
            <b>ls</b> is implemented by calling the native operating system's directory listing command—available options will vary from system to system.</p>

## Example

```matlab
res = ls(nelsonroot())
if ~ispc()
  res = ls(nelsonroot(), '-l')
end
```

## See also

[dir](../files_folders_functions/dir.md), [isdir](../files_folders_functions/isdir.md), [isfile](../files_folders_functions/isfile.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
