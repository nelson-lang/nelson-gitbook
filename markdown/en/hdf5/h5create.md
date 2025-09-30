# h5create

Creates a data set.

## Syntax

- h5create(filename, datasetname, size, Name1, Value1, ..., NameN, ValueN)

## Input argument

- filename - a string: hdf5 filename.
- datasetname - a string: name of the data set.
- size - a row vector specifying the extents of the data set.
- Name1, Value1, ..., NameN, ValueN - Name-Value Pair Arguments.

## Description

<p>
            <b>h5create</b> creates a data set and specify its extent dimensions, datatype and chunk size.</p>
<p>Name-Values pair supported:</p>
<p>Name: Datatype (Nelson® datatypes).</p>
<p>Value: 'double' (default), 'uint64', 'uint32', 'uint16', 'uint8', 'single', 'int64', 'int32', 'int16', or	'int8'.</p>
<p>Name: ChunkSize, chunking layout</p>
<p>Value: []</p>
<p>Name: Deflate, gzip compression level (0-9)</p>
<p>Value: 0 (default)</p>
<p>Name: FillValue, fill value for numeric data sets.</p>
<p>Value: 0 (default)</p>
<p>Name: Fletcher32, enable fletcher32 checksum filter.</p>
<p>Value: logical: false by default</p>
<p>Name: Shuffle, enable shuffle filter.</p>
<p>Value: logical: false by default</p>
<p>Name: TextEncoding, Character encoding.</p>
<p>Value: 'system' or 'UTF-8' (default).</p>

## Example

```matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset1',[10 20]);
h5dump([tempdir(), 'myfile.h5'])
```

## See also

[h5write](../hdf5/h5write.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
