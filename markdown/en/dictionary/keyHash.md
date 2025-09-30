# keyHash

Create a hash code for a dictionary key.

## Syntax

- H = keyHash(A)

## Input argument

- A - array

## Output argument

- H - scalar: uint64, Hash code.

## Description

<p>
            <b>H = keyHash(A)</b> returns a uint64 scalar representing the input array, <b>A</b>.</p>
<p>The keyHash function computes a hash code derived from the characteristics of the input.</p>
<p>For custom classes, keyHash might require overloading to guarantee proper equivalence.</p>

## Example

```matlab
keyHash({'a', 'b', 1})
keyHash({1, 'a', 'b'})
```

## See also

[keyMatch](../dictionary/keyMatch.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.5.0   | initial version |

## Author

Allan CORNET
