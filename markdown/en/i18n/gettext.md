# gettext

Get text translated into the current locale.

## Syntax

- translated_string = gettext(your_string)
- translated*string = *(your_string))

## Input argument

- your_string - a string: message to be translated.

## Output argument

- translated_string - a string: message translated.

## Description

<p>
            translated_string = gettext(your_string) gets the translation of a string your_string to the current locale in the Nelson domain.</p>

<p>
                _(your_string) is an alias of gettext(your_string).</p>

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
