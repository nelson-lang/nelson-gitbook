# mex

Build MEX function

## 📝 Syntax

- mex(filenames)
- mex(filenames, option1, ..., optionN)
- mex(api, filenames)
- mex(api, filenames, option1, ..., optionN)
- mex('-output', mexName, filenames)
- mex(api, '-output', mexName, filenames)
- mex(api, '-output', mexName, filenames, option1, ..., optionN)
- mex('-client, 'engine', filenames)
- mex('-client', 'engine', 'filenames', api, option1, ..., optionN)

## 📥 Input argument

- '-client', 'engine' - enable to build C/C++ source files into standalone engine application.
- api - a string: '-R2017b' (separated complex representation) or '-R2018a' (interleaved complex representation).
- filenames - a string or cell of characters: list of files to use. First filename used as mex name.
- mexName - a string: override naming convention.
- option1, ..., optionN - string: compilation or link option.

## 📄 Description

To use mex, C/C++ compiler must be available and configured. See Supported C/C++ compilers section for more information.

Nelson includes an interface to allow legacy mex-files to be compiled and linked with Nelson.

A mex file is a type of computer file that provides an interface between Octave or the reference commercial software and functions written in C, C++.

Nelson have also his own C++ API to manage more easily internal nelson's objects.

PREDEFINED C MACRO:

<b>MX_IS_NELSON</b> macro is defined to easily detect if Nelson is used in C code.

<b>MX_HAS_INTERLEAVED_COMPLEX</b> macro is defined if C MEX API used is '-R2018a'.

Supported options: compilation or link.

<b>CFLAGS=</b>

<b>-D</b> The -D option defines C preprocessor macro.

<b>-U</b> The -U option undefines C preprocessor macro

<b>-I</b> Adds pathname to the list of folders to search for #include files.

<b>-l</b> Links with dynamic object library .lib, .so or .dylib.

<b>-g</b> Used for debugging (Debug configuration).

## 💡 Example

```matlab

		edit([modulepath('mex', 'tests'), '/test_engine.m'])

```

## 🔗 See also

[Supported C/C++ compilers](../dynamic_link/2_supported_compilers.md), [dlgenerategateway](../dynamic_link/dlgenerategateway.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
