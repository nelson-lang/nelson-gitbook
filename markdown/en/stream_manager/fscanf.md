# fscanf

Reads data from a file.

## Syntax

- R = fscanf(fid, format)
- [R, count] = fscanf(fid, format)
- [R, count] = fscanf(fid, format, sizeR)

## Input argument

- fid - a file descriptor
- format - a string describing the format to used function.
- sizeR - desired dimensions of R.

## Output argument

- R - matrix or character vector.

## Description

<p>Read data in text from the file specified by the file descriptor fid.</p>
<p>characters encoding uses <b>fopen</b> parameter.</p>
Value type format comment Integer %i base 10 Integer signed %d base 10 Integer unsigned %u base 10 Integer %o Octal (base 8) Integer %x Hexadecimal (lowercase) Integer %X Hexadecimal (uppercase) Floating-point number %f Fixed-point notation Floating-point number %e Exponential notation (lowercase) Floating-point number %E Exponential notation (uppercase) Floating-point number %g Exponential notation (compact format, lowercase) Floating-point number %G Exponential notation (compact format, uppercase) Character %c Single character String %s Character vector.

## Example

```matlab

M = rand(3, 2);
fw = fopen([tempdir, 'example_fscanf.txt'], 'wt');
fprintf(fw, "%f %f %f", M);
fclose(fw);

fd = fopen([tempdir, 'example_fscanf.txt'], 'r');
R = fscanf(fd, "%g %g %g");
fclose(fd);
R

```

## See also

[fopen](../stream_manager/fopen.md), [fprintf](../stream_manager/fprintf.md), [dlmwrite](../stream_manager/dlmwrite.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
