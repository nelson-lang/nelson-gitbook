# feof

Checks end of file.

## Syntax

- status = feof(fid)

## Input argument

- fid - a file descriptor

## Output argument

- status - an integer value: 1 if file is closed or 0 if not.

## Description

  <p><b>feof</b> checks if end of file has been reached.</p>

## Example

```matlab
fid = fopen([nelsonroot(), '/etc/startup.m'], 'rt');
feof(fid)
while ~feof(fid)
  tline = fgetl(fid);
  disp(tline);
end
feof(fid)
fclose(fid);
```

## See also

[fopen](fopen.md), [fgetl](fgetl.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
