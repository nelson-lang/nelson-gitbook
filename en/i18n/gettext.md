# gettext

# \_

Get text translated into the current locale.

## Syntax

- translated_string = gettext(your_string)
- translated*string = *(your_string))

## Input argument

- your_string - a string: message to be translated.

## Output argument

- translated_string - a string: message translated.

## Description

  <p><b>translated_string = gettext(your_string)</b> gets the translation of a string <b>your_string</b> to the current locale in the Nelson domain.</p>
  <p><b>_(your_string)</b> is an alias of <b>gettext(your_string)</b>.</p>

## Example

```matlab
disp(_('function not found.'))
```

## See also

[setlanguage](../localization/setlanguage.md), [getlanguage](../localization/getlanguage.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
