



QObject_iswidgettype


QObject_iswidgettype

Returns true if the QObject is a widget.

## Syntax

- R = QObject_iswidgettype(h)

## Input argument

 - h - an QObject handle.

## Output argument

 - R - a logical.

## Description


  <p>Returns true if the QObject is a widget; otherwise returns false.</p>


## See also

QObject_set.md QObject_set (set).
## Example

```Nelson
h = errordlg()
r = QObject_iswidgettype(h)
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



