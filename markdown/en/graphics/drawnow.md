# drawnow

Update figures and process callbacks

## Syntax

- drawnow()

## Description

  <p><b>drawnow</b> flushes the event queue and updates the figure window.</p>

## Example

```matlab
x = -pi:pi/20:pi;
plot(x, cos(x))
drawnow
title('Title Here ...')
grid on
```

## See also

[refresh](refresh.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
