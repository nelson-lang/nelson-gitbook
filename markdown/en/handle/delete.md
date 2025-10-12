# delete

delete handle objects.

## Syntax

- delete(h)

## Input argument

- h - a handle object: scalar or matrix.

## Description

<p>
            delete(h) removes from memory the handle objects referenced by h.</p>

<p>When deleted, any references to the objects in h become invalid.</p>

<p>To remove the handle variables, use the clear function.</p>

<p>See clear function about how to force delete with clear function.</p>

## Example

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

## See also

[clear](../memory_manager/clear.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
