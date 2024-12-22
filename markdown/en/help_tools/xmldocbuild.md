# xmldocbuild

Internal function to convert xml document files to html.

## Syntax

- status = xmldocbuild(source_dirs, destination_dir, main_title, export_format, overwrite)

## Input argument

- source_dirs - a cell of string: list of xml filenames.
- destination_dir - a string: directory destination.
- main_title - a string: title of main index.
- export_format - a string: 'qt' or 'html'.
- overwrite - a logical: force overwrite if file destination already exists

## Output argument

- status - a logical: files generated or not.

## Description

  <p><b>xmldocbuild</b> convert xml document files to html.</p>
  <p>internal function</p>

## See also

[buildhelp](buildhelp.md), [buildhelpweb](buildhelpweb.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
