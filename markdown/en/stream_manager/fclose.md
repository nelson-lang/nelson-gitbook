# fclose

Close an opened file.

## Syntax

- fclose(fid)
- fclose('all')
- status = fclose(fid)
- status = fclose('all')

## Input argument

- fid - a file descriptor

## Output argument

- status - an integer value: 0 if file is closed or -1 if not.

## Description

<p>
            fclose must be used to close a file opened by fopen.</p>

<p>
                fclose('all') closes all opened file with fopen.</p>

## Example

```matlab


fd = fopen([tempdir(), filesep(), 'fclose_tst'],'wt');
status = fclose(fd)
status = fclose(fd)


```

## See also

[fopen](../stream_manager/fopen.md), [fread](../stream_manager/fread.md), [feof](../stream_manager/feof.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
