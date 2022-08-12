# fwrite

Write data in binary form to the file specified by the file descriptor fid.

## Syntax

- count = fwrite(fid, data)
- count = fwrite(fid, data, precision)
- count = fwrite(fid, data, precision, skip)
- count = fwrite(fid, data, precision, skip, arch)
- count = fwrite(fid, data, precision, arch)

## Input argument

- fid - a file descriptor
- data - data to write
- precision - class of values to read
- skip - number of bytes to skip
- arch - a string specifying the data format for the file.

## Output argument

- count - -1 or number of elements written

## Description

  <p>Write data in binary form to the file specified by the file descriptor fid.</p>
  <p>characters encoding uses <b>fopen</b> parameter.</p>
  <p>supported architecture:</p>
  <p><b>native</b> , <b>n</b>: format of the current machine.</p>
  <p><b>ieee-be</b>, <b>b</b>: IEEE big endian.</p>
  <p><b>ieee-le</b>, <b>l</b>: IEEE little endian.</p>

## Example

```matlab
A = rand(3,1)

fileID = fopen([tempdir(), 'doubledata.bin'],'w');
fwrite(fileID, A,'double');
fclose(fileID);

fileID = fopen([tempdir(), 'doubledata.bin'],'r');
R = fread(fileID, 'double')
fclose(fileID);
```

## See also

[fopen](fopen.md), [fclose](fclose.md), [fread](fread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
