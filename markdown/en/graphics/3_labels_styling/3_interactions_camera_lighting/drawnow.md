# drawnow

Update figures and process callbacks

## 📝 Syntax

- drawnow()
- drawnow('limitrate')
- drawnow limitrate

## 📥 Input argument

- limitrate - Limits figure updates to reduce rendering work during animation loops.

## 📄 Description


<b>drawnow</b> flushes the event queue and updates the figure window. 

<b>drawnow('limitrate')</b> and <b>drawnow limitrate</b> process pending callbacks but skip figure updates when the previous update was recent. This mode is useful in animation loops.

## 💡 Examples



```matlab
x = -pi:pi/20:pi;
plot(x, cos(x))
drawnow
title('Title Here ...')
grid on
```


```matlab
x = linspace(0, 2*pi, 200);
h = plot(x, sin(x));
for k = 1:20
  set(h, 'YData', sin(x + k / 10));
  drawnow limitrate
end
```


## 🔗 See also

[refresh](../../../graphics/3_labels_styling/3_interactions_camera_lighting/refresh.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
