# exist

Check for the existence.

## Syntax

- res = exist(name)
- res = exist(name, category)

## Input argument

- name - a string: name of variable, function, file or directory.
- category - a string: 'var', 'builtin', 'file', or 'dir'.

## Output argument

- res - a integer value.

## Description

<p>
            exists checks for the existence of variable, builtin, file or directory.</p>

<p>
                exists returns:</p>

<p>
                    0 does not exist</p>

<p>
                        1 is an variable</p>

<p>
                            2 is a file</p>

<p>
                                3 is a mex function</p>

<p>
                                    5 is a builtin or function</p>

<p>
                                        7 is a directory</p>

## Example

```matlab
exist('fileread')
fileread = 3;
exist('fileread')
clear fileread
exist('fileread')

```

## See also

[isbuiltin](../functions_manager/isbuiltin.md), [ismacro](../functions_manager/ismacro.md), [isfile](../files_folders_functions/isfile.md), [isdir](../files_folders_functions/isdir.md), [isvar](../memory_manager/isvar.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
