

# fprintf

Writes data to a file.

## Syntax

- fprintf(format, v1, ... , vn)
- fprintf(fid, format, v1, ... , vn)
- R = fprintf(fid, format, v1, ... , vn)

## Input argument

 - fid - a file descriptor
 - format - a string describing the format to used_function.
 - v1, ... , vn - data to convert and print according to the previous format parameter.

## Output argument

 - R - an integer value: number of bytes that fprintf write.

## Description


  <p>Write data in text form to the file specified by the file descriptor fid.</p>
  <p>characters encoding uses <b>fopen</b> parameter.</p>
  <p>If fid equals 1 redirection in stdout.</p>
  <p>If fid equals 2 redirection in stderr.</p>
  <p>The <b>format</b> follows C fprintf syntax.</p>
  <style>
table, th, td {
    border: 1px solid black;
}
  </style>
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


## Examples

```matlab
fileID = fopen([tempdir(), 'fprintf.txt'],'wt');
fprintf(fileID, 'an example of %s.', 'text');
fclose(fileID);

R = fileread([tempdir(), 'fprintf.txt'])
```
```matlab
fprintf(1, 'an value %g.', pi);
fprintf(2, "an value %g.", pi);
```

## See also

[fopen](fopen.md), [fclose](fclose.md), [fread](fread.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



