



poheader

_

Generates po file header.

## Syntax

- ce = poheader(domain, language)

## Input argument

 - domain - a string: domain message.
 - language - a string: language, examples 'en_US' or 'fr_FR'.

## Output argument

 - ce - a cell of string: po file header.

## Description


  <p><b>ce = poheader(domain, language)</b> generates po file header.</p>


## Example

```Nelson
poheader('nelson', 'en_US')
```

## See also

setlanguage.md setlanguage, getlanguage.md getlanguage.
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



