# fread

Read data in binary form to the file specified by the file descriptor fid.

## 📝 Syntax

- res = fread(fid)
- res = fread(fid, sz, precision)
- res = fread(fid, sz, precision, skip)
- res = fread(fid, sz, precision, arch)
- res = fread(fid, sz, precision, skip, arch)
- [res, count] = fread(fid, sz, precision, skip, arch)

## 📥 Input argument

- fid - a file descriptor
- sz - Dimensions of output array: scalar, [m,n] or [m, Inf]
- precision - class of values to read
- skip - number of bytes to skip
- arch - a string specifying the data format for the file.

## 📤 Output argument

- res - a vector of floating point or integer type numbers
- count - number of characters reads into res

## 📄 Description

Read data in binary form to the file specified by the file descriptor fid.

supported architecture:

<b>native</b> , <b>n</b>: format of the current machine.

<b>ieee-be</b>, <b>b</b>: IEEE big endian.

<b>ieee-le</b>, <b>l</b>: IEEE little endian.

characters encoding uses <b>fopen</b> parameter.

## 💡 Examples

```matlab

A = rand(3,1)
fileID = fopen([tempdir(), 'doubledata.bin'],'w');
fwrite(fileID, A,'double');
fclose(fileID);

fileID = fopen([tempdir(), 'doubledata.bin'],'r');
R = fread(fileID, 'double')
fclose(fileID);

```

```matlab

fileID = fopen([tempdir(), 'uint16nine.bin'],'w');
fwrite(fileID,[1:9],'uint16');
fclose(fileID);

fileID = fopen([tempdir(), 'uint16nine.bin'],'r');
A = fread(fileID,[4,Inf],'uint16')
fclose(fileID);

```

## 🔗 See also

[fopen](../stream_manager/fopen.md), [fclose](../stream_manager/fclose.md), [fwrite](../stream_manager/fwrite.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
