# dlmake

call make or nmake tool

## 📝 Syntax

- [res, message] = dlmake(destinationdir)
- [res, message] = dlgeneratemake(destinationdir, libname, c\_cpp\_files, includes, defines, external\_libraries, build\_configuration, c\_flags, cxx\_flags)

## 📥 Input argument

- destinationdir - a string: destination directory where is the makefile to call.

## 📤 Output argument

- res - a logical: true if makefile execution was successfully.
- message - a string: empty if makefile execution was successfully or an error message.

## 📄 Description


<b>dlmake</b> used to provide an multiplatform way to build C/C++. 

When it is called with at least one output argument, <b>dlmake</b> returns <b>res</b> (a logical) and <b>message</b>. When it is called with no output argument, it raises the error <b>Nelson:dlmake:failed</b> on failure instead of returning a false status.

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

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
