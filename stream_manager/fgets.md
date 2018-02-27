



fgets


fgets

Read string from a file, stopping after a newline, or EOF, or n characters have been read.

## Syntax

- res = fgets(f)
- res = fgets(f, n)

## Input argument

 - f - a file descriptor
 - n - a scalar: number of characters

## Output argument

 - res - a string or -1

## Description


  <p>Read string from a file, stopping after a newline, or EOF, or n characters have been read.</p>
  <p>If there is no more character to read, fgets will return -1.</p>
  <p>If n is omitted, fgets reads until the next newline.</p>


## Examples

```Nelson
fid = fopen([nelsonroot(), '/etc/startup.nls']);
  tline = fgets(fid);
  while ischar(tline)
  disp(tline)
  tline = fgets(fid);
  end

  fclose(fid);
```
```Nelson
fid = fopen([nelsonroot(), '/etc/startup.nls']);

  tline = fgets(fid, 5);
  while ischar(tline)
  disp(tline)
  tline = fgets(fid, 5);
  end

  fclose(fid);
```

## See also

fclose.md fclose, fopen.md fopen, fgetl.md fgetl.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



