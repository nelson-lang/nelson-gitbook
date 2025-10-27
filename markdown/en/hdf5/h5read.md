# h5read

Read HDF5 data set.

## 📝 Syntax

- val = h5read(filename, location)

## 📥 Input argument

- filename - a string: hdf5 filename.
- location - a string: full path identifying a data set.

## 📤 Output argument

- val - a nelson's variable.

## 📄 Description

<b>h5read</b> reads data set in <b>location</b> from the HDF5 file.

## 💡 Example

```matlab
h5_directory = [modulepath('hdf5','tests'), '/h5'];
double_data = [h5_directory, '/h5ex_t_float.h5'];
R = h5read(double_data,'/DS1')
```

## 🔗 See also

[h5write](../hdf5/h5write.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
