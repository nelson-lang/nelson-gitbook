# augstate

Append state vector to output vector.

## Syntax

- sysa = augstate(sys)
- [Aa, Ba, Ca, Da] = augstate(A, B, C, D)

## Input argument

- sys - LTI model.

## Output argument

- sysa - State-space model with states appended to the outputs.

## Description

<p>The function sysa = augstate(sys) adds the state vector to the outputs of a state-space model.</p>

## Example

```matlab
sys = ss(10, 10, 20, 0);
sysa = augstate(sys)
```

## See also

[feedback](../control_system/feedback.md), [series](../control_system/series.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
