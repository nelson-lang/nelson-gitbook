

# fgetl

Read string from a file without newline.

## Syntax

- res = fgetl(f)

## Input argument

 - f - a file descriptor

## Output argument

 - res - a string or -1

## Description


  <p>Read string from a file, stopping after a newline or EOF have been read.</p>
  <p>If there is no more character to read, fgets willreturn -1.</p>
  <p>newline character removed of the string returned</p>


## Example

```matlab
fid = fopen([nelsonroot(), '/etc/startup.nls']);

tline = fgetl(fid);
while ischar(tline)
    disp(tline)
    tline = fgetl(fid);
end

fclose(fid);
```

## See also

[fclose](fclose.md), [fopen](fopen.md), [fgets](fgets.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



