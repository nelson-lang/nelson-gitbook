# nelson.lang.HandlePlaceholder

Placeholder handle class used for missing handle targets.

## 📝 Syntax

- obj = nelson.lang.HandlePlaceholder()

## 📤 Output argument

- obj - a scalar handle object.

## 📄 Description

<b>nelson.lang.HandlePlaceholder</b> is a concrete handle class used when an API must return a handle object but no live target is available.

A placeholder object created with the constructor is a normal valid handle until it is deleted.

Weak references with no assigned target return an invalid handle whose class is <b>nelson.lang.HandlePlaceholder</b>.

The class does not define user properties or methods beyond the common handle operations.

Use this class as a neutral handle class when the original target class is unknown or not relevant.

A constructed placeholder object and an invalid placeholder handle are different values. The constructed object is valid until deleted; an invalid placeholder handle is never valid.

Placeholder handles can be checked with <b>isvalid</b>, compared by class name with <b>class</b>, and used anywhere a generic handle placeholder is appropriate.

The class is intentionally empty. It is not a container for user data.

## 💡 Examples

Create and delete a placeholder handle.

```matlab
p = nelson.lang.HandlePlaceholder();
class(p)
isvalid(p)
delete(p)
isvalid(p)
```

Inspect the default handle returned by an empty weak reference.

```matlab
w = nelson.lang.WeakReference();
h = w.Handle;
class(h)
isvalid(h)
```

Compare a valid placeholder object with an invalid placeholder handle.

```matlab
p = nelson.lang.HandlePlaceholder();
q = nelson.lang.invalidHandle('nelson.lang.HandlePlaceholder');
class(p)
class(q)
isvalid(p)
isvalid(q)
```

## 🔗 See also

[nelson.lang.WeakReference](../handle/nelson.lang.WeakReference.md), [nelson.lang.invalidHandle](../handle/nelson.lang.invalidHandle.md), [isvalid](../handle/isvalid.md), [class](../types/class.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
