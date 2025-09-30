# save

save workspace variables to .nh5 or .mat file

## Syntax

- save(filename)
- save(filename, version, var1, ..., varN)
- save(filename, '-append', ...)
- save(filename, '-mat', ...)
- save(filename, '-nh5', ...)
- save(filename, '-nocompression', ...)

## Input argument

- filename - a string: .nh5 or .mat filename. extension defines format used .mat or .nh5 (default)
- var1, ..., varN - string: Names of variables to save from Nelson's workspace.
- version: '-v7.3', '-v7', '-v6', '-v4' - mat file version used ('-v7.3'). This option will force '-mat'.
- '-mat' - forces to save as mat file (default '-nh5').
- '-nh5' - forces to save as nh5 file (default '-nh5').
- '-append' - append variables to an existing .nh5/.mat file (-v7.3 only).
- '-nocompression' - disable .nh5/.mat file compression.

## Description

<p>
            <b>save</b> save workspace variables to .nh5 or .mat file.</p>

## Examples

```matlab
A = ones(3, 4);
B = 'hello for open mat users';
save([tempdir(), 'example_load.mat'], 'A', 'B')
clear;
st = load([tempdir(), 'example_load.mat']);
who
st.A
st.B
clear
who
load([tempdir(), 'example_load.mat']);
who
A
B

```

append variables

```matlab
C = eye(3, 4);
save([tempdir(), 'example_load.mat'], 'C', '-append')
clear;
st = load([tempdir(), 'example_load.mat']);
who
st.A
st.B
st.C
clear
who
load([tempdir(), 'example_load.mat']);
who
A
B
C

```

compression

```matlab
C = eye(1000, 1000);
save([tempdir(), 'example_save_with_compression.mat'], 'C')
save([tempdir(), 'example_save_no_compression.mat'], 'C', '-nocompression')
with_compression = dir([tempdir(), 'example_save_with_compression.mat'])
no_compression = dir([tempdir(), 'example_save_no_compression.mat'])
```

## See also

[load](../stream_manager/load.md), [savenh5](../hdf5/savenh5.md), [savemat](../matio/savemat.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
