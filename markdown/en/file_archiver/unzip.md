# unzip

Decompress zip file.

## 📝 Syntax

- res = unzip(zipname)
- res = unzip(zipname, rootdir)

## 📥 Input argument

- zipname - a string: zip archive filename.
- rootdir - a character vector or string scalar: root path for the files to decompress.

## 📤 Output argument

- res - a cell array of character vectors containing the names of the files decompressed.

## 📄 Description

<b>unzip</b> extracts archived contents. Timestamps and attributes are preserved for each file.

## 💡 Example

```matlab
zip([tempdir(), 'test.zip'], [nelsonroot(), '/module_skeleton']);
r = unzip([tempdir(), 'test.zip'], [tempdir(), createGUID()])
```

## 🔗 See also

[zip](../file_archiver/zip.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
