# waitforbuttonpress

Wait for click or key press.

## Syntax

- w = waitforbuttonpress()

## Output argument

- w - a scalar double value: 0 for mouse button pressed, 1 for key pressed.

## Description

<p>
            <b>w = waitforbuttonpress()</b> pauses the execution of code until the user interacts with the current figure by either clicking a mouse button or pressing a key.</p>

## Example

```matlab
cf = gcf();
w = waitforbuttonpress;
axes;
```

## See also

[figure](../graphics/figure.md), [gcf](../graphics/gcf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.7.0   | initial version |

## Author

Allan CORNET
