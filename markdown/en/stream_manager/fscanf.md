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
  <table style="width:100%">
    <tr>
      <th>Value type</th>
      <th>format</th>
      <th>comment</th>
    </tr>
    <tr>
      <td>Integer</td>
      <td>%i</td>
      <td>base 10</td>
    </tr>
    <tr>
      <td>Integer signed</td>
      <td>%d</td>
      <td>base 10</td>
    </tr>
    <tr>
      <td>Integer unsigned</td>
      <td>%u</td>
      <td>base 10</td>
    </tr>
    <tr>
      <td>Integer</td>
      <td>%o</td>
      <td>Octal (base 8)</td>
    </tr>
    <tr>
      <td>Integer</td>
      <td>%x</td>
      <td>Hexadecimal (lowercase)</td>
    </tr>
    <tr>
      <td>Integer</td>
      <td>%X</td>
      <td>Hexadecimal (uppercase)</td>
    </tr>
    <tr>
      <td>Floating-point number</td>
      <td>%f</td>
      <td>Fixed-point notation</td>
    </tr>
    <tr>
      <td>Floating-point number</td>
      <td>%e</td>
      <td>Exponential notation (lowercase)</td>
    </tr>
    <tr>
      <td>Floating-point number</td>
      <td>%E</td>
      <td>Exponential notation (uppercase)</td>
    </tr>
    <tr>
      <td>Floating-point number</td>
      <td>%g</td>
      <td>Exponential notation (compact format, lowercase)</td>
    </tr>
    <tr>
      <td>Floating-point number</td>
      <td>%G</td>
      <td>Exponential notation (compact format, uppercase)</td>
    </tr>
    <tr>
      <td>Character</td>
      <td>%c</td>
      <td>Single character</td>
    </tr>
    <tr>
      <td>String</td>
      <td>%s</td>
      <td>Character vector.</td>
    </tr>
  </table>

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

[fopen](fopen.md), [fprintf](fprintf.md), [dlmwrite](dlmwrite.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
