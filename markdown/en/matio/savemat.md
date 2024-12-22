# savemat

save workspace variables to .mat file

## Syntax

- savemat(filename)
- savemat(filename, version, var1, ..., varN)
- savemat(filename, '-append', ...)
- savemat(filename, '-nocompression', ...)

## Input argument

- filename - a string: .nh5 filename.
- var1, ..., varN - string: Names of variables to save from Nelson's workspace.
- '-v7.3' - default mat file used.
- '-v7' - mat file version 7 used as output format.
- '-v6', '-v4' - mat file version 6 or 4 used as output format.
- '-append' - append variables to an existing .mat file (-v7.3 only).
- '-nocompression' - disable .mat file compression.

## Description

  <p><b>savemat</b> save workspace variables to .mat file.</p>
  <p>Nelson's data types are converted into the Mat file equivalents.</p>

Bibliography

Thanks to MATIO library (http://sourceforge.net/projects/matio/).

## Examples

```matlab
A = ones(3, 4);
B = 'hello for open mat users';
savemat([tempdir(), 'example_loadmat.mat'], 'A', 'B')
clear;
st = loadmat([tempdir(), 'example_loadmat.mat']);
who
st.A
st.B
clear
who
loadmat([tempdir(), 'example_loadmat.mat']);
who
A
B
```

append variables

```matlab
C = eye(3, 4);
savemat([tempdir(), 'example_loadmat.mat'], 'C', '-append')
clear;
st = loadmat([tempdir(), 'example_loadmat.mat']);
who
st.A
st.B
st.C
clear
who
loadmat([tempdir(), 'example_loadmat.mat']);
who
A
B
C
```

compression

```matlab
C = eye(1000, 1000);
savemat([tempdir(), 'example_savemat_with_compression.mat'], 'C')
savemat([tempdir(), 'example_savemat_no_compression.mat'], 'C', '-nocompression')
with_compression = dir([tempdir(), 'example_savemat_with_compression.mat'])
no_compression = dir([tempdir(), 'example_savemat_no_compression.mat'])
```

## See also

[loadmat](loadmat.md), [save](../stream_manager/save.md), [savenh5](../hdf5/savenh5.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
