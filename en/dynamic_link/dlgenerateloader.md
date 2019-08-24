

# dlgenerateloader

Generates loader.nls file for C++ gateway.

## Syntax

- dlgenerateloader(destinationdir, libraryname)

## Input argument

 - destinationdir - a string: destination directory where is generated the loader.nls file.
 - libraryname - a string or a cell of string: external dynamic library names.

## Description


  <p><b>dlgenerateloader</b> generates a 'loader.nls' load external dynamic libraries.</p>


## Example

See module skeleton for example
```matlab
dlgenerateloader(tempdir(), {'c_dynamic_library_1',  'c_dynamic_library_2'});
text = fileread([tempdir(), 'loader.nls'])
```

## See also

[dlgenerateunloader](dlgenerateunloader.md), [dlgenerategateway](dlgenerategateway.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



