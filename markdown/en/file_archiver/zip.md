# zip

Compress files into zip file.

## 📝 Syntax

- res = zip(zipname, files)
- res = zip(zipname, files, rootdir)

## 📥 Input argument

- zipname - a string: zip archive destination file.
- files - a character vector, a cell array of character vectors, or a string array: Names of files or folders to compress.
- rootdir - a character vector or string scalar: root path for the files to compress.

## 📤 Output argument

- res - a cell array of character vectors containing the names of the files included in zip archive.

## 📄 Description

<b>zip</b> compress files and directories into zip archive.

Each individual file must be smaller than 4 GB.

Number of files specified must be less than 65535.

## 💡 Example

```matlab
zip([tempdir(), 'test.zip'], [nelsonroot(), '/module_skeleton'])

```

## 🔗 See also

[unzip](../file_archiver/unzip.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
