

# dlgeneratecleaner

Generates cleaner.nls file for C++ gateway.

## Syntax

- dlgeneratecleaner(destinationdir)
- dlgeneratecleaner(destinationdir, files)

## Input argument

 - destinationdir - a string: destination directory where is generated the cleaner.nls file.
 - files - a string or a cell of string: list of files to delete.

## Description


  <p><b>dlgeneratecleaner</b> generates a 'cleaner.nls' to remove files.</p>


## Example

See module skeleton for example
```matlab
dlgeneratecleaner(tempdir());
text = fileread([tempdir(), 'cleaner.nls'])
```

## See also

[dlgenerateunloader](dlgenerateunloader.md), [dlgenerategateway](dlgenerategateway.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



