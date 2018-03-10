

# frewind

Set position of stream to the beginning.

## Syntax

- frewind(fid)

## Input argument

 - fid - an integer value: file descriptor

## Description


  <p><b>frewind</b> puts the pointer at the beginning of file</p>


## Example

```matlab
fileID = fopen([tempdir(), '/frewind.txt'],'wt');
fprintf(fileID, 'son is beautiful.');
frewind(fileID);
fprintf(fileID, 'sun');
fclose(fileID);
R = fileread([tempdir(), '/frewind.txt'])
```

## See also

[fclose](fclose.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



