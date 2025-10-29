# fsize

Returns size of an opened file.

## 📝 Syntax

- s = fsize(fid)

## 📥 Input argument

- fid - a file descriptor

## 📤 Output argument

- s - an integer value: size of a file.

## 📄 Description

<b>fsize</b> returns th size of a file opened by <b>fopen</b>.

## 💡 Example

```matlab
TXT = 'example about fsize.';
fileID = fopen([tempdir(), 'fsize.txt'],'wt');
fprintf(fileID, TXT);
fsize(fileID)
length(TXT)
status = fclose(fileID);
```

## 🔗 See also

[fopen](../stream_manager/fopen.md), [fprintf](../stream_manager/fread.md), [fclose](../stream_manager/fclose.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
