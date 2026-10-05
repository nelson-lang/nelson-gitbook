# h5create

Creates a data set.

## 📝 Syntax

- h5create(filename, datasetname, size, Name1, Value1, ..., NameN, ValueN)

## 📥 Input argument

- filename - a string: hdf5 filename.
- datasetname - a string: name of the data set.
- size - a row vector specifying the extents of the data set.
- Name1, Value1, ..., NameN, ValueN - Name-Value Pair Arguments.

## 📄 Description


<b>h5create</b> creates a data set and specify its extent dimensions, datatype and chunk size. 

Name-Values pair supported: 

Name: Datatype (Nelson® datatypes). 

Value: 'double' (default), 'uint64', 'uint32', 'uint16', 'uint8', 'single', 'int64', 'int32', 'int16', or 'int8'. 

Name: ChunkSize, chunking layout 

Value: [] 

Name: Deflate, gzip compression level (0-9) 

Value: 0 (default) 

Name: FillValue, fill value for numeric data sets. 

Value: 0 (default) 

Name: Fletcher32, enable fletcher32 checksum filter. 

Value: logical: false by default 

Name: Shuffle, enable shuffle filter. 

Value: logical: false by default 

Name: TextEncoding, Character encoding. 

Value: 'system' or 'UTF-8' (default).

## 💡 Example



```matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset1',[10 20]);
h5dump([tempdir(), 'myfile.h5'])
```


## 🔗 See also

[h5write](../hdf5/h5write.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
