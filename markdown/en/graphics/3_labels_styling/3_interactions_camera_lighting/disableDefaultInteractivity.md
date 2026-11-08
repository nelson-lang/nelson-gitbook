# disableDefaultInteractivity

Disable the built-in axes interactions.

## 📝 Syntax

- disableDefaultInteractivity(ax)

## 📥 Input argument

- ax - a scalar graphics object value: an axes.

## 📄 Description


By default, the axes have built-in interactions enabled: dragging the cursor over the axes pans the content (or rotates it for a 3-D view), and the scroll wheel zooms. 

<b>disableDefaultInteractivity(ax)</b> turns these built-in interactions off for the axes <b>ax</b>. 

The axes toolbar and the pan, zoom, and rotate modes enabled from the toolbar or programmatically are not affected. 

Use <b>enableDefaultInteractivity</b> to turn the built-in interactions back on.

## 💡 Example



```matlab
plot(1:1000, sin(1:1000))
ax = gca();
disableDefaultInteractivity(ax);

```


## 🔗 See also

[enableDefaultInteractivity](../../../graphics/3_labels_styling/3_interactions_camera_lighting/enableDefaultInteractivity.md), [pan](../../../graphics/3_labels_styling/3_interactions_camera_lighting/pan.md), [zoom](../../../graphics/3_labels_styling/3_interactions_camera_lighting/zoom.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
