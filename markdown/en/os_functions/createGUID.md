# createGUID

Creates a GUID.

## Syntax

- s = createGUID()
- c = createGUID(numbers_of_GUID)

## Input argument

- numbers_of_GUID - an integer value: numbers of GUID to create.

## Output argument

- s - a string
- c - a cell of strings.

## Description

  <p><b>createGUID</b> creates a Globally Unique IDentifier (GUID), , a unique 128-bit integer used for CLSIDs and interface identifiers.</p>

## Example

```matlab
createGUID()
createGUID(10)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
