# dlgenerateloader

Generates loader.m file for C++ gateway.

## 📝 Syntax

- dlgenerateloader(destinationdir, libraryname)

## 📥 Input argument

- destinationdir - a string: destination directory where is generated the loader.m file.
- libraryname - a string or a cell of string: external dynamic library names.

## 📄 Description

<b>dlgenerateloader</b> generates a 'loader.m' load external dynamic libraries.

## 💡 Example

See module skeleton for example

```matlab

dlgenerateloader(tempdir(), {'c_dynamic_library_1',  'c_dynamic_library_2'});
text = fileread([tempdir(), 'loader.m'])
```

## 🔗 See also

[dlgenerateunloader](../dynamic_link/dlgenerateunloader.md), [dlgenerategateway](../dynamic_link/dlgenerategateway.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
