# h5dump

dump the content of hdf5 file as text.

## 📝 Syntax

- h5dump(filename)
- R = h5dump(filename)
- h5dump(filename, location)
- R = h5dump(filename, location)

## 📥 Input argument

- filename - a string: hdf5 filename.
- location - a string: name of the path to dump.

## 📤 Output argument

- R - a string: dump of hdf5 file as text.

## 📄 Description

<b>h5dump</b> dump the content of hdf5 file as text.

## 💡 Example

```matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset2',[10 20]);
h5dump([tempdir(), 'myfile.h5'])
R = h5dump([tempdir(), 'myfile.h5'])
```

## 🔗 See also

[h5write](../hdf5/h5write.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
