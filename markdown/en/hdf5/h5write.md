# h5write

Writes HDF5 data set.

## 📝 Syntax

- h5write(filename, location, value)

## 📥 Input argument

- filename - a string: hdf5 filename.
- location - a string: full path identifying a data set.
- value - a value: supported types: double, uint64, uint32, uint16, uint8 single, int64, int32, int16, int8, character array or Nelson class object.

## 📄 Description

<b>h5write</b> writes data to an entire data set,<b>location</b>, in the HDF5 file.

Nelson class objects, including legacy class objects and classdef value or handle objects, are written with Nelson object metadata.

## 💡 Examples

```matlab
h5filename = [tempdir(), 'doc_h5write.h5'];
R = rand(3, 4)
h5write(h5filename,'/rand', R);
h5write(h5filename,'/str', 'Hello');
R2 = h5read(h5filename, '/rand')
```

```matlab
h5filename = [tempdir(), 'doc_h5write_class.h5'];
if isfile(h5filename) rmfile(h5filename) end
addpath([nelsonroot(), '/modules/overload/examples/complex']);
obj = complexObj(3, 4);
h5write(h5filename, '/obj', obj);
R = h5read(h5filename, '/obj');
class(R)
R.r
R.i
```

## 🔗 See also

[h5read](../hdf5/h5read.md).

## 🕔 History

| Version | 📄 Description                                            |
| ------- | --------------------------------------------------------- |
| 1.0.0   | initial version                                           |
| 2.0.0   | Nelson class objects can be written with object metadata. |

<!--
## 👤 Author

Allan CORNET
-->
