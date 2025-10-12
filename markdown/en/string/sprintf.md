# sprintf

Writes data to a string.

## Syntax

- sprintf(format, v1, ... , vn)

## Input argument

- format - a string describing the format to used_function.
- v1, ... , vn - data to convert and print according to the previous format parameter.

## Description

<p>Write data in text form to a string.</p>

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
sprintf('an example of %s.', 'text')
```

```matlab
sprintf("an example of %s.", "text")
```

```matlab
sprintf('an value %g.', pi)
```

Display a percent sign

```matlab
sprintf('%d%%.', 95)
```

## See also

[fprintf](../stream_manager/fprintf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
