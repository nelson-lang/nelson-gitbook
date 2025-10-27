# dlgeneratecleaner

Generates cleaner.m file for C++ gateway.

## 📝 Syntax

- dlgeneratecleaner(destinationdir)
- dlgeneratecleaner(destinationdir, files)

## 📥 Input argument

- destinationdir - a string: destination directory where is generated the cleaner.m file.
- files - a string or a cell of string: list of files to delete.

## 📄 Description

<b>dlgeneratecleaner</b> generates a 'cleaner.m' to remove files.

## 💡 Example

See module skeleton for example

```matlab

dlgeneratecleaner(tempdir());
text = fileread([tempdir(), 'cleaner.m'])
```

## 🔗 See also

[dlgenerateunloader](../dynamic_link/dlgenerateunloader.md), [dlgenerategateway](../dynamic_link/dlgenerategateway.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
