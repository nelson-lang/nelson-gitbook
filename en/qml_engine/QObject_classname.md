

# QObject_classname

Returns class name of an QObject handle.

## Syntax

- s = QObject_classname(h)

## Input argument

 - h - an QObject handle.

## Output argument

 - s - a string: class name.

## Description


  <p>Returns class name of an QObject handle.</p>


## See also

[QObject_set (set)](QObject_set.html), [QObject_get (get)](QObject_get.html).
## Example

```matlab
h1 = QObject_root()
h1.className
QObject_classname(h1)
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



