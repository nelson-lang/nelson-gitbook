# xmldoctohelp

Converts xml Nelson help files to Nelson format.

## Syntax

- status = xmldoctohelp(source_dirs, destination_dir, main_title, overwrite)

## Input argument

- source_dirs - a cell of string: list of xml filenames.
- destination_dir - a string: directory destination.
- main_title - a string: title of main index.
- overwrite - a logical: force overwrite if file destination already exists

## Output argument

- status - a logical: files generated or not.

## Description

<p>
            xmldoctohelp converts xml Nelson help files to Nelson format.</p>

## See also

[xmldocbuild](../help_tools/xmldocbuild.md), [buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
