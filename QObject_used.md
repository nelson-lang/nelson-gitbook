



QObject_used


QObject_used

Returns list of current used QObject handle.

## Syntax

- r = QObject_used()

## Output argument

 - h - a vector of QObject handle.

## Description


  <p>Returns list of current used QObject handle.</p>


## See also

QObject_set.md QObject_set (set), QObject_get.md QObject_get (get).
## Example

```Nelson
h1 = errordlg()
h2 = errordlg()
h3 = errordlg()
used = QObject_used()
delete(used)
used = QObject_used()
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



