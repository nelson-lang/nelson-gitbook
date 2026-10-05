# nelson.lang.WeakReference

Weak reference to a handle object.

## 📝 Syntax

- w = nelson.lang.WeakReference()
- w = nelson.lang.WeakReference(handleObject)
- h = w.Handle
- w.Handle = handleObject
- h = w.ValidHandle

## 📥 Input argument

- handleObject - a scalar handle object.

## 📤 Output argument

- w - a scalar weak-reference handle.
- h - the current target handle, or an invalid typed handle when the target is not live.

## 📄 Description


<b>nelson.lang.WeakReference</b> stores a weak reference to one scalar handle object. 

The weak reference does not keep the target object alive. If all strong references to the target are cleared, <b>w.Handle</b> returns an invalid handle with the target class name. 

If the target has been deleted, <b>w.Handle</b> also returns an invalid handle with the target class name. 

The <b>Handle</b> dependent property can be read and assigned. Assigning it replaces the weak target. 

The <b>ValidHandle</b> dependent property returns the live target. If the target is missing, expired, or deleted, reading <b>ValidHandle</b> raises an error. 

A weak reference created with no input returns an invalid <b>nelson.lang.HandlePlaceholder</b> handle through <b>Handle</b>. 

Reading <b>Handle</b> from a live weak reference returns a normal strong handle value. Keeping that returned value in a variable keeps the target alive until that variable is cleared or overwritten. 

Assigning an invalid handle is allowed. The weak reference then remembers the handle class and returns an invalid handle of that class. 

The assigned target must be a scalar handle. Numeric values, strings, structs, cells, and handle arrays with more than one element are rejected. 

Use <b>isvalid(w.Handle)</b> when a missing target is an ordinary condition. Use <b>w.ValidHandle</b> when a missing target is an error condition. 

<b>nelson.lang.WeakReference</b> is itself a handle object. Deleting or clearing the weak-reference object does not delete the target object. 

The weak-reference object stores only the target handle identity and fallback class name. It does not copy target properties or target data.

## 💡 Examples

Create an empty weak reference.

```matlab
w = nelson.lang.WeakReference();
h = w.Handle;
class(h)
isvalid(h)
```
Observe that the weak reference does not keep the target alive.

```matlab
d = [tempdir(), 'nelson_help_weak_reference/'];
mkdir(d);
filewrite([d, '/NelsonHelpWeakTarget.m'], ["classdef NelsonHelpWeakTarget < handle"; "  properties"; "    Value = 10"; "  end"; "end"]);
addpath(d);
target = NelsonHelpWeakTarget();
w = nelson.lang.WeakReference(target);
isvalid(w.Handle)
class(w.Handle)
clear target;
h = w.Handle;
isvalid(h)
class(h)
```
Keep the target alive with a strong handle returned from Handle.

```matlab
d = [tempdir(), 'nelson_help_weak_reference_strong/'];
mkdir(d);
filewrite([d, '/NelsonHelpWeakStrongTarget.m'], ["classdef NelsonHelpWeakStrongTarget < handle"; "  properties"; "    Value = 20"; "  end"; "end"]);
addpath(d);
target = NelsonHelpWeakStrongTarget();
w = nelson.lang.WeakReference(target);
strongTarget = w.Handle;
clear target;
isvalid(w.Handle)
strongTarget.Value
clear strongTarget;
isvalid(w.Handle)
```
Use ValidHandle when an invalid target must be treated as an error.

```matlab
d = [tempdir(), 'nelson_help_weak_reference_valid/'];
mkdir(d);
filewrite([d, '/NelsonHelpWeakValidTarget.m'], ["classdef NelsonHelpWeakValidTarget < handle"; "end"]);
addpath(d);
target = NelsonHelpWeakValidTarget();
w = nelson.lang.WeakReference(target);
liveTarget = w.ValidHandle;
clear target liveTarget;
try
  w.ValidHandle;
catch exception
  disp(exception.message)
end
```
Replace the weak target.

```matlab
d = [tempdir(), 'nelson_help_weak_reference_replace/'];
mkdir(d);
filewrite([d, '/NelsonHelpWeakReplaceTarget.m'], ["classdef NelsonHelpWeakReplaceTarget < handle"; "  properties"; "    Name = ''first''"; "  end"; "end"]);
addpath(d);
a = NelsonHelpWeakReplaceTarget();
b = NelsonHelpWeakReplaceTarget();
b.Name = 'second';
w = nelson.lang.WeakReference(a);
w.Handle.Name
w.Handle = b;
w.ValidHandle.Name
delete(b);
isvalid(w.Handle)
```


## 🔗 See also

[nelson.lang.HandlePlaceholder](../handle/nelson.lang.HandlePlaceholder.md), [nelson.lang.invalidHandle](../handle/nelson.lang.invalidHandle.md), [isvalid](../handle/isvalid.md), [delete](../handle/delete.md), [isa](../types/isa.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
