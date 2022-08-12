# audiosupportedformats

Get audio file supported formats.

## Syntax

- formats = audiosupportedformats()

## Output argument

- formats - struct array with 'Name', 'Extension', 'Subformats' fieldnames.

## Description

  <p><b>audiosupportedformats</b> returns a structure with supported audio file formats.</p>

## Example

```matlab
formats = audiosupportedformats();
for k = [1: length(formats)]
  formats(k).Name
  formats(k).Extension
  formats(k).Subformats
end
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
