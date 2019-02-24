

# h5save

# save

save workspace variables to .nh5 file

## Syntax

- h5save(filename)
- h5save(filename, var1, ..., varN)
- h5save(filename, '-append', ...)
- h5save(filename, '-nocompression', ...)

## Input argument

 - filename - a string: .nh5 filename.
 - var1, ..., varN - string: Names of variables to save from Nelson's workspace.
 - '-append' - append variables to an existing .nh5 file.
 - '-nocompression' - disable .nh5 file compression.

## Description


  <p><b>h5save</b> save workspace variables to .nh5 file.</p>
  <p>.nh5 file uses hdf5 file as container.</p>


## Examples

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
append variables
```matlab
C = eye(3, 4);
h5save([tempdir(), '/example_h5load.nh5'], 'C', '-append')
clear;
st = h5load([tempdir(), '/example_h5load.nh5']);
who
st.A
st.B
st.C
clear
who
h5load([tempdir(), '/example_h5load.nh5']);
who
A
B
C
```
compression
```matlab
C = eye(1000, 1000);
h5save([tempdir(), '/example_h5save_with_compression.nh5'], 'C')
h5save([tempdir(), '/example_h5save_no_compression.nh5'], 'C', '-nocompression')
with_compression = dir([tempdir(), '/example_h5save_with_compression.nh5'])
no_compression = dir([tempdir(), '/example_h5save_no_compression.nh5'])
```

## See also

[h5load](h5load.md), [h5write](h5write.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



