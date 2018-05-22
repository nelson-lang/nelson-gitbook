

# evalc

Evaluate Nelson code with console capture.

## Syntax

- t = evalc(str)
- t = evalc(str)
- [t, r1, ... rn] = evalc(str)

## Input argument

 - str - a string: Nelson instruction to execute

## Output argument

 - T - output text captured in t variable
 - [r1, ... rn] - results: output variables

## Description


  <p><b>evalc</b> executes Nelson instructions given in a string.</p>
  <p>console display is redirected into a variable.</p>
  <p>diary, more, and input are disabled when <b>evalc</b> is used.</p>


## Examples

```matlab
evalc('B=4')
```
```matlab
t = evalc('dir')
```

## See also

[eval](eval.md), [evalin](evalin.md), [execstr](execstr.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



