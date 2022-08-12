# qml_evaluatefile

Evaluates a js file.

## Syntax

- r = qml_evaluatefile(filename)

## Input argument

- filename - a string: a js filename.

## Output argument

- r - a double, logical, int or string.

## Description

  <p>Evaluates a js file.</p>
  <p>If returned value cannot be converted to a basic type, it will converted to string.</p>

## See also

[qml_evaluatestring](qml_evaluatestring.html).

## Example

```matlab
test_file = [tempdir() , '/example_qml_evaluatefile.js'];
f = fopen(test_file, 'wt');
fwrite(f, 'a = 2 + 4');
fclose(f);
qml_evaluatefile(test_file)
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
