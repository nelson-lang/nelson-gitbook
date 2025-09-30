# loadnh5

load data from .nh5 file into Nelson's workspace.

## Syntax

- loadnh5(filename)
- st = loadnh5(filename)
- loadnh5(filename, var1, ..., varN)
- st = loadnh5(filename, var1, ..., varN)

## Input argument

- filename - a string: .nh5 filename.
- var1, ..., varN - string: Names of variables to load into Nelson's workspace.

## Output argument

- st - a structure with variables name as fieldnames.

## Description

<p>
            <b>loadnh5</b> loads data from .nh5 file to Nelson's workspace.</p>
<p>.nh5 file uses hdf5 file as container.</p>

## Example

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

## See also

[savenh5](../hdf5/savenh5.md), [h5read](../hdf5/h5read.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
