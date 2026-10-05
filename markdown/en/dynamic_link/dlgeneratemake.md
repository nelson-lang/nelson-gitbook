# dlgeneratemake

Generates a makefile for building a dynamic library.

## 📝 Syntax

- [res, message] = dlgeneratemake(destinationdir, libname, c\_cpp\_files, include)
- [res, message] = dlgeneratemake(destinationdir, libname, c\_cpp\_files, includes, defines, external\_libraries, build\_configuration, c\_flags, cxx\_flags)
- [res, message] = dlgeneratemake(maketype, destinationdir, libname, c\_cpp\_files, include)
- [res, message] = dlgeneratemake(maketype, destinationdir, libname, c\_cpp\_files, includes, defines, external\_libraries, build\_configuration, c\_flags, cxx\_flags)

## 📥 Input argument

- maketype - a string: 'executable' or 'dynamic\_library'.
- destinationdir - a string: destination directory where is generated the makefile.
- libname - a string: destination dynamic library or executable name.
- c\_cpp\_files - a string or a cell of strings: .c or .cpp list files (full filename)
- include - a string or a cell of strings: directories where to find include files.
- defines - a string or a cell of strings: a list of defines
- external\_libraries - a string or a cell of strings: a list of external libraries to link
- build\_configuration - a string: 'Debug' or 'Release'
- c\_flags - a string: C flags
- cxx\_flags - a string: C flags

## 📤 Output argument

- res - a logical: true if makefile was generated.
- message - a string: empty if makefile was generated or an error message.

## 📄 Description


<b>dlgeneratemake</b> generates a makefile adapted to your system environment for building shared libraries. 

Thanks to <b>CMake</b> to help Nelson in this task. 

When it is called with at least one output argument, <b>dlgeneratemake</b>returns <b>res</b> (a logical) and <b>message</b>. When it is called with no output argument, it raises the error <b>Nelson:dlgeneratemake:failed</b> on failure instead of returning a false status.

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

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
