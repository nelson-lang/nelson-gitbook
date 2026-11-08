# enableDefaultInteractivity

Enable the built-in axes interactions.

## 📝 Syntax

- enableDefaultInteractivity(ax)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.

## 📄 Description


<b>enableDefaultInteractivity(ax)</b> turns the built-in interactions of the axes <b>ax</b> back on after they were turned off with <b>disableDefaultInteractivity</b>. 

With the built-in interactions on, dragging the cursor over the axes pans the content (or rotates it for a 3-D view) and the scroll wheel zooms. 

This is the default state of a new axes.

## 💡 Example



```matlab
plot(1:1000, sin(1:1000))
ax = gca();
disableDefaultInteractivity(ax);
enableDefaultInteractivity(ax);

```


## 🔗 See also

[disableDefaultInteractivity](../../../graphics/3_labels_styling/3_interactions_camera_lighting/disableDefaultInteractivity.md), [pan](../../../graphics/3_labels_styling/3_interactions_camera_lighting/pan.md), [zoom](../../../graphics/3_labels_styling/3_interactions_camera_lighting/zoom.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
