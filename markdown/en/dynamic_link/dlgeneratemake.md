# dlgeneratemake

Generates a makefile for building a dynamic library.

## 📝 Syntax

- [res, message] = dlgeneratemake(destinationdir, libname, c_cpp_files, include)
- [res, message] = dlgeneratemake(destinationdir, libname, c_cpp_files, includes, defines, external_libraries, build_configuration, c_flags, cxx_flags)
- [res, message] = dlgeneratemake(maketype, destinationdir, libname, c_cpp_files, include)
- [res, message] = dlgeneratemake(maketype, destinationdir, libname, c_cpp_files, includes, defines, external_libraries, build_configuration, c_flags, cxx_flags)

## 📥 Input argument

- maketype - a string: 'executable' or 'dynamic_library'.
- destinationdir - a string: destination directory where is generated the makefile.
- libname - a string: destination dynamic library or executable name.
- c_cpp_files - a string or a cell of strings: .c or .cpp list files (full filename)
- include - a string or a cell of strings: directories where to find include files.
- defines - a string or a cell of strings: a list of defines
- external_libraries - a string or a cell of strings: a list of external libraries to link
- build_configuration - a string: 'Debug' or 'Release'
- c_flags - a string: C flags
- cxx_flags - a string: C flags

## 📤 Output argument

- res - a logical: true if makefile was generated.
- message - a string: empty if makefile was generated or an error message.

## 📄 Description

<b>dlgeneratemake</b> generates a makefile adapted to your system environment for building shared libraries.

Thanks to <b>CMake</b> to help Nelson in this task.

## 💡 Example

See module skeleton for example

```matlab
[status, message] = dlgeneratemake(currentpath, ...
'module_skeleton', ...
{[currentpath, '/cpp/cpp_sumBuiltin.cpp'], [currentpath, '/cpp/Gateway.cpp']}, ...
[{[currentpath, '/include']; [currentpath, '/../src/include']}; dlgetnelsonincludes()], ...
[], ...
[dlgetnelsonlibraries(); [currentpath, '/../src/business_code']]);
```

## 🔗 See also

[dlmake](../dynamic_link/dlmake.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
