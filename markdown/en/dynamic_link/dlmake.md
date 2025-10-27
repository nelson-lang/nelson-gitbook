# dlmake

call make or nmake tool

## 📝 Syntax

- [res, message] = dlmake(destinationdir)
- [res, message] = dlgeneratemake(destinationdir, libname, c_cpp_files, includes, defines, external_libraries, build_configuration, c_flags, cxx_flags)

## 📥 Input argument

- destinationdir - a string: destination directory where is the makefile to call.

## 📤 Output argument

- res - a logical: true if makefile execution was successfully.
- message - a string: empty if makefile execution was successfully or an error message.

## 📄 Description

<b>dlmake</b> used to provide an multiplatform way to build C/C++.

## 💡 Example

basic example to call dlmake

```matlab

dest = [tempdir(), 'dlmake_help'];
mkdir(dest);
txt = 'MESSAGE( STATUS "Hello world !")';
filewrite([dest, '/CMakeLists.txt'], txt);
[status, message] = dlmake(dest)

```

## 🔗 See also

[dlgeneratemake](../dynamic_link/dlgeneratemake.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
