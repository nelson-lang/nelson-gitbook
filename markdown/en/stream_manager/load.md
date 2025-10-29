# load

load data from .nh5 or .mat file into Nelson's workspace.

## 📝 Syntax

- load(filename)
- st = load(filename)
- load(filename, var1, ..., varN)
- st = load(filename, var1, ..., varN)
- load(filename, '-mat')
- load(filename, '-nh5')

## 📥 Input argument

- filename - a string: .nh5 or .mat filename.
- '-mat' or '-nh5' - forces to read file as nh5 or mat.
- var1, ..., varN - string: Names of variables to load into Nelson's workspace.

## 📤 Output argument

- st - a structure with variables name as fieldnames.

## 📄 Description

<b>load</b> loads data from .nh5 or .mat file to Nelson's workspace.

## 💡 Example

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

## 🔗 See also

[save](../stream_manager/save.md), [savemat](../matio/savemat.md), [savenh5](../hdf5/savenh5.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
