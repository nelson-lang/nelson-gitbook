

# overloadbasictypes

Modify overloading behavior

## Syntax

- tf = overloadbasictypes()
- tf_previous = overloadbasictypes(tf_new)

## Input argument

 - tf_new - a logical: true or false (default)

## Output argument

 - tf - a logical: current value of overloading behavior.
 - tf_previous - a logical: previous value of overloading behavior.

## Description


  <p><b>overloadbasictypes(true)</b> modify behavior of overloading in Nelson.</p>
  <p>By default, operators and functions call internal functions with predefined types and if function or operator does not find a valid type then nelson calls overloading.
With overloadbasictypes(true), interpreter searchs first an overloaded function.</p>
  <p>This step is more time consuming and concerns all loaded functions but it allows to overload easily double, single, char, integers, logical types.</p>
  <p>Beware, to change default behavior can modify nelson's computation results (reserved to advanced users).</p>


## Examples

By default, overload on basic types is disabled (fast)
```matlab
overloadbasictypes()
%overloadbasictypes(false);
tic;for i=1:1e5;3 == 3;end;toc()
```
With overload on basic types enabled (slow)
```matlab
overloadbasictypes(true);
tic;for i=1:1e5;3 == 3;end;toc()
```

## See also

[plus](plus.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



