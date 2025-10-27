# interp1

Linear 1-D data interpolation

## 📝 Syntax

- vq = interp1(x, v, xq)
- vq = interp1(x, v, xq, 'linear')
- vq = interp1(v, xq)
- vq = interp1(v, xq, 'linear')

## 📥 Input argument

- x - Sample points: vector.
- v - Sample values: vector, matrix.
- xq - Query points: scalar, vector, matrix.

## 📤 Output argument

- vq - Interpolated values: scalar, vector, matrix.

## 📄 Description

<b>vq = interp1(x, v, xq)</b> returns interpolated values of a 1-D function at specific query points using linear interpolation.

## 📚 Bibliography

de Boor, C., A Practical Guide to Splines, Springer-Verlag, 1978.

## 💡 Example

```matlab
f = figure();
v = [0  1.41  2  1.41  0  -1.41  -2  -1.41 0];
xq = 1.5:8.5;
vq = interp1(v,xq);
plot(1:9, v, 'o', xq, vq, '*');
legend('v','vq');
```

<img src="interp1.svg" align="middle"/>

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
