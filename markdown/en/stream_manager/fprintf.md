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

<p>characters encoding uses fopen parameter.</p>

<p>If fid equals 1 redirection in stdout.</p>

<p>If fid equals 2 redirection in stderr.</p>

<p>The format follows C fprintf syntax.</p>

| Value type            | format | comment                                          |
| --------------------- | ------ | ------------------------------------------------ |
| Integer               | %i     | base 10                                          |
| Integer signed        | %d     | base 10                                          |
| Integer unsigned      | %u     | base 10                                          |
| Integer               | %o     | Octal (base 8)                                   |
| Integer               | %x     | Hexadecimal (lowercase)                          |
| Integer               | %X     | Hexadecimal (uppercase)                          |
| Floating-point number | %f     | Fixed-point notation                             |
| Floating-point number | %e     | Exponential notation (lowercase)                 |
| Floating-point number | %E     | Exponential notation (uppercase)                 |
| Floating-point number | %g     | Exponential notation (compact format, lowercase) |
| Floating-point number | %G     | Exponential notation (compact format, uppercase) |
| Character             | %c     | Single character                                 |
| String                | %s     | Character vector.                                |

<p>To display a percent sign, you need to use a double percent sign (%%) in the format string.</p>

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

How to use backspace

```matlab
reverseStr = '';
for idx = 1 : 100
 percentDone = idx;
 msg = sprintf('Percent done: %3.1f', percentDone);
 fprintf([reverseStr, msg]);
 reverseStr = repmat(sprintf('\b'), 1, length(msg));
end

```

Display a percent sign

```matlab
fprintf(1, '%d%%.', 95)
```

## See also

[fopen](../stream_manager/fopen.md), [fclose](../stream_manager/fclose.md), [fread](../stream_manager/fread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
