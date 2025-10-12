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

<p>
            format(new_style) changes the display format and number printing of the current session.</p>

<p>
                format('default') will reset to default format (short, loose).</p>

<p></p>

<p>Styles supported:</p>

<p>
                    short
                </p>

<p>
                    long
                </p>

<p>
                    shortE
                </p>

<p>
                    longE
                </p>

<p>
                    shortEng
                </p>

<p>
                    longEng
                </p>

<p>
                    plus
                </p>

<p>
                    rational
                </p>

<p>
                    hex
                </p>

<p></p>

<p>Line Spacing Format supported:</p>

<p>
                    loose
                </p>

<p>
                    compact
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

[disp](../display_format/disp.md), [display](../display_format/display.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
