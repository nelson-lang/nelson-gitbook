# sprintf

Writes data to a string.

## Syntax

- sprintf(format, v1, ... , vn)

## Input argument

- format - a string describing the format to used_function.
- v1, ... , vn - data to convert and print according to the previous format parameter.

## Description

  <p>Write data in text form to a string.</p>
  <p>The <b>format</b> follows C fprintf syntax.</p>
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
