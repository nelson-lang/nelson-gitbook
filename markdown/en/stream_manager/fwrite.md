# fwrite

Write data in binary form to the file specified by the file descriptor fid.

## 📝 Syntax

- count = fwrite(fid, data)
- count = fwrite(fid, data, precision)
- count = fwrite(fid, data, precision, skip)
- count = fwrite(fid, data, precision, skip, arch)
- count = fwrite(fid, data, precision, arch)
- [count, bytes] = fwrite(fid, ...)

## 📥 Input argument

- fid - a file descriptor
- data - data to write
- precision - class of values to read
- skip - number of bytes to skip
- arch - a string specifying the data format for the file.

## 📤 Output argument

- count - -1 or number of elements written
- bytes - number of bytes written

## 📄 Description

Write data in binary form to the file specified by the file descriptor fid.

characters encoding uses <b>fopen</b> parameter.

supported architecture:

<b>native</b> , <b>n</b>: format of the current machine.

<b>ieee-be</b>, <b>b</b>: IEEE big endian.

<b>ieee-le</b>, <b>l</b>: IEEE little endian.

supported precision:

| Value Type                     | Precision                      | Bits (Bytes)                 |
| ------------------------------ | ------------------------------ | ---------------------------- |
| Logical                        | 'logical'                      | platform-dependent           |
| Floating-point numbers         | 'double', 'real\*8', 'float64' | 64 (8)                       |
| 'single', 'real\*4', 'float32' | 32 (4)                         |
| Integers, signed               | 'int'                          | 32 (4)                       |
| 'int8', 'integer\*1', 'schar'  | 8 (1)                          |
| 'int16', 'integer\*2'          | 16 (2)                         |
| 'int32', 'integer\*4'          | 32 (4)                         |
| 'int64', 'integer\*8'          | 64 (8)                         |
| Integers, unsigned             | 'uint8', 'uchar'               | 8 (1)                        |
| 'uint16'                       | 16 (2)                         |
| 'uint32'                       | 32 (4)                         |
| 'uint64'                       | 64 (8)                         |
| Characters                     | 'char', '\*char'               | depends encoding with fopen. |
| 'char\*1'                      | depends encoding with fopen.   |

if <b>fwrite</b> fails, it returns a negative value.

if<b>fwrite</b> succeeds, it returns the number of elements written successfully.

if<b>fwrite</b> writes characters, it returns the number of characters written successfully and not the number of elements.

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

test_string =  'é ö ä ü è ê';
fid = fopen([tempdir(), 'fwrite_example_char.txt'], 'w','n', 'UTF-8');
[count, bytes] = fwrite(fid, test_string) % returns 11 and 17
fclose(fid);

% This is the number of characters written and not the number of bytes.
% Each accented character (é, ö, ä, ü, è, ê) = 2 bytes each
% Each space = 1 byte
% Total bytes = 6*2 + 5*1 = 17 bytes

```

## 🔗 See also

[fopen](../stream_manager/fopen.md), [fclose](../stream_manager/fclose.md), [fread](../stream_manager/fread.md).

## 🕔 History

| Version | 📄 Description                                                      |
| ------- | ------------------------------------------------------------------- |
| 1.0.0   | initial version                                                     |
| 1.15.0  | fwrite returns the number of characters written for character data. |

<!--
## 👤 Author

Allan CORNET
-->
