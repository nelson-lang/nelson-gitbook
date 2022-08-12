# fsize

Returns size of an opened file.

## Syntax

- s = fsize(fid)

## Input argument

- fid - a file descriptor

## Output argument

- s - an integer value: size of a file.

## Description

  <p><b>fsize</b> returns th size of a file opened by <b>fopen</b>.</p>

## Example

```matlab
TXT = 'example about fsize.';
fileID = fopen([tempdir(), 'fsize.txt'],'wt');
fprintf(fileID, TXT);
fsize(fileID)
length(TXT)
status = fclose(fileID);
```

## See also

[fopen](fopen.md), [fprintf](fread.md), [fclose](fclose.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
