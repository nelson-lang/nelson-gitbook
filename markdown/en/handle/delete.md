# delete

delete handle objects.

## 📝 Syntax

- delete(h)

## 📥 Input argument

- h - a handle object: scalar or matrix.

## 📄 Description

<b>delete(h)</b> removes from memory the handle objects referenced by h.

When deleted, any references to the objects in h become invalid.

To remove the handle variables, use the clear function.

See clear function about how to force delete with clear function.

## 💡 Example

```matlab
f = figure();
ax = gca();
img = image();
hold on
P = plot(magic(5));
children1 = ax.Children;
delete(img);
size(children1)
children2 = ax.Children;
size(children2)
```

## 🔗 See also

[clear](../memory_manager/clear.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
