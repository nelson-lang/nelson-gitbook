

# h5load

# load

load data form .nh5 file into Nelson's workspace.

## Syntax

- h5load(filename)
- st = h5load(filename)
- h5load(filename, var1, ..., varN)
- st = h5load(filename, var1, ..., varN)

## Input argument

 - filename - a string: .nh5 filename.
 - var1, ..., varN - string: Names of variables to load into Nelson's workspace.

## Output argument

 - st - a structure with variables name as fieldnames.

## Description


  <p><b>h5load</b> loads data from .nh5 file to Nelson's workspace.</p>
  <p>.nh5 file uses hdf5 file as container.</p>


## Example

```matlab
A = ones(3, 4);
B = 'hello for open mat users';
h5save([tempdir(), '/example_h5load.nh5'], 'A', 'B')
clear;
st = h5load([tempdir(), '/example_h5load.nh5']);
who
st.A
st.B
clear
who
h5load([tempdir(), '/example_h5load.nh5']);
who
A
B
```

## See also

[h5save](h5save.md), [h5read](h5read.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



