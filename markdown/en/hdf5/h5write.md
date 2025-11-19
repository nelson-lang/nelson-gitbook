# h5write

Writes HDF5 data set.

## 📝 Syntax

- h5write(filename, location, value)

## 📥 Input argument

- filename - a string: hdf5 filename.
- location - a string: full path identifying a data set.
- value - a value: supported types: double, uint64, uint32, uint16, uint8 single, int64, int32, int16, int8 or character array.

## 📄 Description

<b>h5write</b> writes data to an entire data set,<b>location</b>, in the HDF5 file.

## 💡 Example

```matlab
h5filename = [tempdir(), 'doc_h5write.h5'];
R = rand(3, 4)
h5write(h5filename,'/rand', R);
h5write(h5filename,'/str', 'Hello');
h5dump(h5filename)
```

## 🔗 See also

[h5read](../hdf5/h5read.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
