



fprintf


fprintf

Writes data to a file.

## Syntax

- fprintf(fid, data)

## Input argument

 - fid - a file descriptor
 - data - a string.

## Description


  <p>Write data in text form to the file specified by the file descriptor fid.</p>


## Example

```Nelson
fileID = fopen([tempdir(), '/fprintf.txt'],'wt');
fprintf(fileID, 'an example of text.');
fclose(fileID);

R = fileread([tempdir(), '/fprintf.txt'])
```

## See also

fopen.md fopen, fclose.md fclose, fread.md fread.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



