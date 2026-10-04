# cprintf

Writes styled formatted text to stdout.

## 📝 Syntax

- cprintf()
- cprintf(format, v1, ... , vn)
- cprintf(style, format, v1, ... , vn)
- R = cprintf(style, format, v1, ... , vn)

## 📥 Input argument

- style - a text style name, RGB vector, or hexadecimal color.
- format - a string describing the text format.
- v1, ... , vn - data to convert and print according to the format parameter.

## 📤 Output argument

- R - number of visible characters written to stdout.

## 📄 Description

<b>cprintf</b> writes formatted text to stdout and applies a text style when the current interface supports styled output. The basic CLI displays plain text; advanced CLI and GUI can render styles.

Without a style argument, <b>cprintf</b> behaves like a stdout formatted print using plain text. With no input argument, it displays a short style demo.

The <b>format</b> argument follows the same formatting rules as <b>fprintf</b>.

Named styles include text, keywords, comments, strings, unterminatedstrings, systemcommands, errors, hyperlinks, and common color names such as black, blue, cyan, green, magenta, red, yellow, white, gray, orange, pink, purple, brown, and gold.

Named styles and colors accept unambiguous prefixes. Light and dark variants can be written with a <b>light</b> or <b>dark</b> prefix, for example <b>lightblue</b> or <b>dark-green</b>.

RGB colors can be specified as a three-element vector in the range [0, 1] or [0, 255]. Hexadecimal colors can use <b>#RGB</b> or <b>#RRGGBB</b>.

A leading <b>\*</b> requests bold text. A leading <b>\_</b> or <b>-</b> requests underlined text. Prefixes can be combined in either order, for example <b>\*\_red</b> or <b>\_\*#0af</b>.

Limitations: rendering depends on the terminal or GUI capabilities; the basic CLI and interfaces without style support display plain text. <b>evalc</b> captures only visible text. Files and diary output do not preserve style information. Output is always sent to stdout, never to stderr.

## 💡 Examples

Short demo

```matlab
cprintf()
```

Plain formatted text

```matlab
cprintf('value: %.3f\n', pi)
```

Named colors

```matlab
cprintf('red', 'red text\n')
cprintf('blue', 'blue text\n')
cprintf('cy', 'cyan from an unambiguous prefix\n')
```

Light and dark variants

```matlab
cprintf('lightgreen', 'light green\n')
cprintf('dark-blue', 'dark blue\n')
```

RGB colors

```matlab
cprintf([1 0.4 0], 'normalized RGB\n')
cprintf([0 128 255], 'byte RGB\n')
```

Hexadecimal colors

```matlab
cprintf('#0af', 'short hex\n')
cprintf('#00aaff', 'long hex\n')
```

Bold and underline

```matlab
cprintf('*red', 'bold red\n')
cprintf('_green', 'underlined green\n')
cprintf('*_dark-magenta', 'bold underlined dark magenta\n')
```

Multiple lines, Unicode, and count

```matlab
msg = ['accent ', char(233)];
count = cprintf('comments', 'line 1\n%s\n', msg)
```

Capture visible text

```matlab
txt = evalc('cprintf(''red'', ''captured'')')
```

## 🔗 See also

[fprintf](../stream_manager/fprintf.md), [diary](../stream_manager/diary.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
