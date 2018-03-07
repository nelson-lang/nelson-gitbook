



qml_evaluatestring


qml_evaluatestring

Evaluates a js string.

## Syntax

- r = qml_evaluatestring(string_to_eval)

## Input argument

 - string_to_eval - a string: a js code.

## Output argument

 - r - a double, logical, int or string.

## Description


  <p>Evaluates a js string.</p>
  <p>If returned value cannot be converted to a basic type, it will converted to string.</p>


## See also

qml_evaluatefile.md qml_evaluatefile.
## Example

```Nelson
qml_evaluatestring('a = 2 + 4')
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



