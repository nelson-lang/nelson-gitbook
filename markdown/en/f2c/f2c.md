# f2c

Fortran to C converter.

## 📝 Syntax

- f2c(src, dest)
- r = f2c(src, dest)
- [r, msg] = f2c(src, dest)

## 📥 Input argument

- src - a string: fortran source file.
- dest - a string: destination directory.

## 📤 Output argument

- r - a logical: true if success.
- msg - a string: error message or ''.

## 📄 Description

<b>f2c</b> converts fortran 66, and fortran 77 files to C.

## 💡 Example

```matlab
f2c([modulepath(nelsonroot(),'f2c','root'), '/tests/dgemm.f'], tempdir());
fileread([tempdir(), 'dgemm.c'])
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
