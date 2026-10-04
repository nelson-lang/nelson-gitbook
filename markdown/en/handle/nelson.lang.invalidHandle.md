# nelson.lang.invalidHandle

Create an invalid handle with a specified handle class.

## 📝 Syntax

- h = nelson.lang.invalidHandle(classname)
- h = nelson.lang.invalidHandle(classname, n)
- h = nelson.lang.invalidHandle(classname, m, n, ...)
- h = nelson.lang.invalidHandle(classname, sz)

## 📥 Input argument

- classname - name of a handle class as a character vector or string scalar.
- n, m, sz - nonnegative integer dimensions for the returned handle array.

## 📤 Output argument

- h - an invalid handle scalar or handle array whose class is <b>classname</b>.

## 📄 Description

<b>nelson.lang.invalidHandle</b> creates a handle value that has the requested handle class but is not valid.

<b>isvalid(h)</b> returns false for every element of the result.

The class name must identify a classdef handle class. Value classes and unknown class names raise an error.

With no dimension arguments, the result is a scalar. With one numeric scalar dimension <b>n</b>, the result is <b>n</b>-by-<b>n</b>. With multiple scalar dimensions or a numeric vector <b>sz</b>, the result has those dimensions.

This function is useful for APIs that need to preserve the class of a missing handle target.

The returned value behaves like a handle array for class, size, concatenation with compatible handle arrays, and <b>isvalid</b>. It has no live object behind it.

Invalid handles are not made valid later. To obtain a live handle, construct a new object of the same class.

All dimensions must be nonnegative integer values. Empty dimension vectors create an empty handle array.

A single scalar dimension follows the same convention as common array constructors: <b>nelson.lang.invalidHandle(classname, 3)</b> returns a 3-by-3 array.

The class is loaded before the handle array is created. This allows user-defined handle classes on the path to be used by name.

Use <b>nelson.lang.HandlePlaceholder</b> when no more specific handle class is available.

## 💡 Examples

Create an invalid placeholder handle.

```matlab
h = nelson.lang.invalidHandle('nelson.lang.HandlePlaceholder');
class(h)
isvalid(h)
```

Create an invalid handle array.

```matlab
h = nelson.lang.invalidHandle('nelson.lang.HandlePlaceholder', 2, 3);
size(h)
isvalid(h)
```

Create an invalid handle array from a size vector.

```matlab
h = nelson.lang.invalidHandle("nelson.lang.HandlePlaceholder", [1 4]);
size(h)
class(h)
isvalid(h)
```

Use a user-defined handle class.

```matlab
d = [tempdir(), 'nelson_help_invalid_handle/'];
mkdir(d);
filewrite([d, '/NelsonHelpInvalidHandleTarget.m'], ["classdef NelsonHelpInvalidHandleTarget < handle"; "end"]);
addpath(d);
h = nelson.lang.invalidHandle('NelsonHelpInvalidHandleTarget');
class(h)
isvalid(h)
```

Reject a value class name.

```matlab
try
  nelson.lang.invalidHandle('double');
catch exception
  disp(exception.message)
end
```

## 🔗 See also

[nelson.lang.WeakReference](../handle/nelson.lang.WeakReference.md), [nelson.lang.HandlePlaceholder](../handle/nelson.lang.HandlePlaceholder.md), [isvalid](../handle/isvalid.md), [class](../types/class.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
