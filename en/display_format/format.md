# format

Display format and number printing.

## Syntax

- fmt = format()
- format()
- format('default')
- format(new_style)

## Input argument

- new_style - a string

## Output argument

- fmt - DisplayFormatOptions object: format used

## Description

  <p><b>format(new_style)</b> changes the display format and number printing of the current session.</p>
  <p><b>format('default')</b> will reset to default format (short, loose).</p>
  <p/>
  <p>Styles supported:</p>
  <p>
    <b>short</b>
  </p>
  <p>
    <b>long</b>
  </p>
  <p>
    <b>shortE</b>
  </p>
  <p>
    <b>longE</b>
  </p>
  <p>
    <b>shortEng</b>
  </p>
  <p>
    <b>longEng</b>
  </p>
  <p>
    <b>plus</b>
  </p>
  <p>
    <b>rational</b>
  </p>
  <p>
    <b>hex</b>
  </p>
  <p/>
  <p>Line Spacing Format supported:</p>
  <p>
    <b>loose</b>
  </p>
  <p>
    <b>compact</b>
  </p>

## Example

an example

```matlab
current_style = format()
pi
format('short')
pi
format('long')
pi
format('shortE')
pi
format('longE')
pi
format('hex')
pi
format('+')
pi
format('rational')
pi
format('compact')
pi
format(current_style)
pi
```

## See also

[disp](disp.md), [display](display.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
