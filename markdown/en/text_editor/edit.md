# edit

function editor.

## Syntax

- edit()
- edit filename
- edit function_name

## Input argument

- filename - a string: filename to open.
- function_name - a string: function name

## Description

<p>
            edit opens a new file called untitled.m in the nelson's editor.</p>

<p>If function_name is the name of a defined nelson function edit(function_name) try to open the associated file function_name.m .</p>

<p>
                edit(dirname) opens all .m available in dirname.</p>

## Example

```matlab
edit('edit')
```

## See also

[smartindent](../text_editor/smartindent.md).

## History

| Version | Description         |
| ------- | ------------------- |
| 1.0.0   | initial version     |
| 1.5.0   | edit(dirname) added |

## Author

Allan CORNET
