# h5ls

List the content of an HDF5 file.

## 📝 Syntax

- h5ls(filename)
- R = h5ls(filename)
- h5ls(filename, location)
- R = h5ls(filename, location)

## 📥 Input argument

- filename - a string: hdf5 filename.
- location - a string: name of the path to list.

## 📤 Output argument

- R - a cell of strings with two columns (first column gives the names and the second one the type of the listed element).

## 📄 Description

<b>h5dump</b> list the content of hdf5 file.

## 💡 Example

```matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset2',[10 20]);
h5ls([tempdir(), 'myfile.h5'])
R = h5ls([tempdir(), 'myfile.h5'])
```

## 🔗 See also

[h5dump](../hdf5/h5dump.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
