# dlgenerateunloader

Generates unloader.m file for C++ gateway.

## 📝 Syntax

- dlgenerateunloader(destinationdir, libraryname)

## 📥 Input argument

- destinationdir - a string: destination directory where is generated the unloader.m file.
- libraryname - a string or a cell of string: external dynamic library names.

## 📄 Description

<b>dlgenerateunloader</b> generates a 'unloader.m' unload external dynamic libraries.

## 💡 Example

See module skeleton for example

```matlab

dlgenerateunloader(tempdir(), {'c_dynamic_library_1',  'c_dynamic_library_2'});
text = fileread([tempdir(), 'unloader.m'])
```

## 🔗 See also

[dlgenerateloader](../dynamic_link/dlgenerateloader.md), [dlgenerategateway](../dynamic_link/dlgenerategateway.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
