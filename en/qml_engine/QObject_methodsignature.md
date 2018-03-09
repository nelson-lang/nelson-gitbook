

# QObject_methodsignature

Returns the signature of a method of a QObject handle.

## Syntax

- res = QObject_methodsignature(h, method_name)

## Input argument

 - h - an QObject handle.
 - method_name - a string : method name.

## Output argument

 - R - a string: method signature.

## Description


  <p>Returns the signature of a method of a QObject handle.</p>


## See also

[QObject_invoke (invoke)](QObject_invoke.html), [QObject_methods (methods)](QObject_methods.html).
## Example

```Nelson
h = errordlg()
QObject_methodsignature(h, 'setTitle')
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



