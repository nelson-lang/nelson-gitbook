# i

Pure Imaginary number.

## Syntax

- i
- 0i
- 3\*i

## Description

<p>
            <b>i</b>, or <b>j</b> returns a pure imaginary number equivalent to sqrt(-1).</p>
<p>Beware, i and j can be redefined and used as ordinary variables, in this case, you must use clear to restore default behavior.</p>

## Examples

```matlab
A = 3i
```

```matlab
A = single(3i)
```

```matlab
i = 33;
disp(i);
clear('i');
disp(i);
```

## See also

[complex](../elementary_functions/complex.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
