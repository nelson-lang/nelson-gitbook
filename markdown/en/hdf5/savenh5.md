# savenh5

save workspace variables to .nh5 file

## 📝 Syntax

- savenh5(filename)
- savenh5(filename, var1, ..., varN)
- savenh5(filename, '-append', ...)
- savenh5(filename, '-nocompression', ...)

## 📥 Input argument

- filename - a string: .nh5 filename.
- var1, ..., varN - string: Names of variables to save from Nelson's workspace.
- '-append' - append variables to an existing .nh5 file.
- '-nocompression' - disable .nh5 file compression.

## 📄 Description

<b>savenh5</b> save workspace variables to .nh5 file.

.nh5 file uses hdf5 file as container.

## 💡 Examples

```matlab
A = ones(3, 4);
B = 'hello for open mat users';
savenh5([tempdir(), 'example_h5load.nh5'], 'A', 'B')
clear;
st = loadnh5([tempdir(), 'example_h5load.nh5']);
who
st.A
st.B
clear
who
loadnh5([tempdir(), 'example_h5load.nh5']);
who
A
B
```

append variables

```matlab
C = eye(3, 4);
savenh5([tempdir(), 'example_h5load.nh5'], 'C', '-append')
clear;
st = loadnh5([tempdir(), 'example_h5load.nh5']);
who
st.A
st.B
st.C
clear
who
loadnh5([tempdir(), 'example_h5load.nh5']);
who
A
B
C
```

compression

```matlab
C = eye(1000, 1000);
savenh5([tempdir(), 'example_h5save_with_compression.nh5'], 'C')
savenh5([tempdir(), 'example_h5save_no_compression.nh5'], 'C', '-nocompression')
with_compression = dir([tempdir(), 'example_h5save_with_compression.nh5'])
no_compression = dir([tempdir(), 'example_h5save_no_compression.nh5'])
```

## 🔗 See also

[loadnh5](../hdf5/loadnh5.md), [h5write](../hdf5/h5write.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
