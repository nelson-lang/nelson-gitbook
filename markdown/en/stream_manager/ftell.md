# ftell

Returns the offset of the current byte relative to the beginning of a file.

## Syntax

- p = ftell(fid)

## Input argument

- fid - a file descriptor

## Output argument

- p - an integer value: position of the file pointer as the number of characters from the beginning of the file.

## Description

<p>
            ftell returns the offset of the current byte relative to the beginning of the file associated with the named stream fid.</p>

## Example

```matlab
TXT = 'example about ftell.';
fileID = fopen([tempdir(), 'ftell.txt'],'wt');
fprintf(fileID, TXT);
p1 = ftell(fileID)
fseek(fileID, SEEK_CUR, 'bof');
p2 = ftell(fileID)
status = fclose(fileID);
```

## See also

[fopen](../stream_manager/fopen.md), [fprintf](../stream_manager/fread.md), [fclose](../stream_manager/fclose.md), [fseek](../stream_manager/fseek.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
